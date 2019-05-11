import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Business } from '../model/business.model';
import { ToastrService } from 'ngx-toastr';
import { BusinessService } from '../services/business.service';
import { catchError } from 'rxjs/operators';
import { EMPTY } from 'rxjs';
import { RoomPath } from '../../archives/model/room-path.model';
import { ArchiveService } from '../../archives/services/archive.service';
import { DefaultRecord } from '../model/default-record.model';
import { Box } from '../../archives/model/box.model';
import { Room } from '../../archives/model/room.model';
import { SecrecyLevel } from '../enumData';
import { check } from 'octicons';
import { DomSanitizer } from '@angular/platform-browser';
import { Rack } from '../../archives/model/rack.model';
import { Cabinet } from '../../archives/model/cabinet.model';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { Cell } from '../../archives/model/cell.model';


@Component({
  selector: 'app-record',
  templateUrl: './record.component.html',
  styleUrls: [
    './record.component.scss',
    '../../archives/cell/cell.component.scss',
    '../../archives/box/box.component.scss'
  ]
})
export class RecordComponent implements OnInit {

  checkIcon = check.toSVG();
  secrecyLevelList = Object.keys(SecrecyLevel).map(key => ({id: key,name:SecrecyLevel[key]}));

  business:Business;
  roomPath: RoomPath;
  defaultRecord: DefaultRecord;
  rooms: Room[];

  selectBox: Box;
  selectCell: Cell;
  explain:string;

  saveing:boolean = false;

  get newSize():number{
    return this.selectBox.size;
  }

  set newSize(value: number){
    if(!value || (value < 1)){
      this.selectBox.size = 1;
    }else if (value > this.emptyCount ){
      this.selectBox.size = this.emptyCount;
    }else{
      this.selectBox.size = value;
    }
  }

  isFull:boolean = true;
  size:number = 1;

  get emptyCount():number{
    let count = 0;
    this.selectCell.boxes.forEach(item=>{
      if (item != this.selectBox){
        count += item.size;
      }
   
    });
    return this.selectCell.size - count;
  }
  
  private createCellBox(){
    if (this.roomPath && this.roomPath.rackPath &&
      this.roomPath.rackPath.cabinetPath &&
      this.roomPath.rackPath.cabinetPath.cellPath && 
      this.roomPath.rackPath.cabinetPath.cellPath.cell){
        
        
        this.selectCell = new Cell(JSON.parse(JSON.stringify(this.roomPath.rackPath.cabinetPath.cellPath.cell)));
        this.roomPath.rackPath.cabinetPath.cellPath.cell = new Cell(this.roomPath.rackPath.cabinetPath.cellPath.cell);


        if (this.selectCell.percentage < 100){
          if (!this.selectCell.boxes){
            this.selectCell.boxes = [];
          }
          let seq = 0;
          for (let b of this.selectCell.boxes){
            seq = b.seq;
            if (b.empty){
              this.onBoxChange(b);
              return ;
            }
          }
          seq ++;
          let box = new Box();
          box.full = false;
          box.empty = true;
          box.old = false;
          box.size = 1;
          box.seq = seq;
          this.selectCell.boxes.push(box);
          this.onBoxChange(box);
          return;
        }else{
          for (let b of this.selectCell.boxes){
            if (!b.full){
              this.onBoxChange(b);
              return ;
            }
          }
        }   
    }
    this.selectBox = null;
    this.selectCell = null;
    
  }

  private saveBusiness(boxId:string){
    this.businessService.archive(this.business.volume.id,boxId,this.explain).subscribe(id => {
      this.router.navigate(['/business-view',this.business.id,'details'])
    })
  }

  saveArichive(){
    if (this.selectBox){
      this.saveing = true;
      if (this.selectBox.id && this.isFull){
        this.arichiveService.setBoxFull(this.selectBox.id).subscribe(id =>this.saveBusiness(id));
      }else{
        this.selectBox.full = this.isFull;
        this.selectBox.empty = false;
        this.arichiveService.addBox(this.selectCell.id,this.selectBox).subscribe(id => this.saveBusiness(id));
      }
    }
  }

  onBoxChange(box:Box){
    if (!box.full || (this.business.volume.old && box.old)){
      this.selectBox = box;
    }else{
      this.selectBox = null;
    }
  }

  onRoomChange(room:Room){
    this.arichiveService.getRoomPath(room.id).subscribe(path => {this.roomPath = path; this.createCellBox();});
  }

  onRackChange(rack:Rack){
    this.arichiveService.getRackPath(rack.id).subscribe(path => {this.roomPath.rackPath = path; this.createCellBox();});
  }

  onCabinetChange(cabinet: Cabinet){
    this.arichiveService.getCabinetPath(cabinet.id).subscribe(path => {this.roomPath.rackPath.cabinetPath = path; this.createCellBox();});
  }
  
  onCellChange(cell: Cell){
    this.arichiveService.getCellPath(cell.id).subscribe(path => {this.roomPath.rackPath.cabinetPath.cellPath = path; this.createCellBox();});
  }

  openCellSelectModel(context){
    this.modalService.open(context,{ size: 'lg' });
  }

  constructor(private route: ActivatedRoute, 
    private router: Router,
    private toastr: ToastrService,
    private businessService: BusinessService,
    private arichiveService: ArchiveService,
    private sanitizer: DomSanitizer,
    private modalService: NgbModal) { }

  ngOnInit() {
    this.checkIcon = this.sanitizer.bypassSecurityTrustHtml(check.toSVG());
    this.route.data.subscribe(data => {
      this.business = data.business;
      this.rooms = data.rooms;
      if (this.business.volume.boxId || this.business.status === 'RECORDED'){
        this.toastr.error("业务已经上架！");
        this.router.navigate(['/business-view',this.business.id,'details']);
      }else{
        if (this.business.defineId){
          this.businessService.getDefaultRecord(this.business.defineId)
          .pipe(
            catchError(err => {
              console.error(err);
              return EMPTY;
            })
          )
          .subscribe(data => {
            this.defaultRecord = data;
            if (data.rack){
              this.arichiveService.getRoomPathByRack(data.rack).pipe(
                catchError(err => {
                  console.error(err);
                  return EMPTY;
                })
              ).subscribe(path => {this.roomPath = path; this.createCellBox(); console.log(".... load path from rack")});
            }else if (data.room){
              this.arichiveService.getRoomPath(data.room).pipe(catchError(err => {
                console.error(err);
                return EMPTY;
              })).subscribe(path => {this.roomPath = path; this.createCellBox(); console.log(".... load path from rack")});
            }else{
              console.log("no default");
            }
          });
          
        }else{
          console.log("no default define");
        }
      }
    })
  }

}
