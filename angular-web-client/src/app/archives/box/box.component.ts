import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Box } from '../model/box.model';
import { Cell } from '../model/cell.model';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { ArchiveService } from '../services/archive.service';
import { Business } from '../../business/model/business.model';
import { SecrecyLevel, BoxSize } from '../../business/enumData';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';


@Component({
  selector: 'app-box',
  templateUrl: './box.component.html',
  styleUrls: ['./box.component.scss']
})
export class BoxComponent implements OnInit {

  businesses: Business[];

  constructor(private route: ActivatedRoute, 
    private modalService: NgbModal,
    private arichiveService: ArchiveService,
    private fb: FormBuilder) { }

  // boxs :Box[];
  cell: Cell;

  selectBox: Box;


  secrecyLevels = SecrecyLevel;

  saveing = false;

  boxSizes = Object.keys(BoxSize).map(key => ({id:BoxSize[key] ,name:key}));

  onFullChange($event){
    if (this.selectBox.full){

      this.arichiveService.setBoxFull(this.selectBox.id).subscribe();
    }else{
      this.arichiveService.setBoxNotFull(this.selectBox.id).subscribe();
    }
    
    console.log(this.selectBox.full)
  }

  openBox(context,box:Box){
    this.selectBox = box;
    this.modalService.open(context, { size: 'lg' });
    this.businesses = [];
    this.arichiveService.listBoxBusiness(box.id).subscribe(businesses => this.businesses = businesses)
  }

  newBoxForm: FormGroup;

  onNewBoxSubmit(){
    this.saveing = true;
    if (this.newBoxForm.get('old').value){
      this.newBoxForm.get('empty').setValue(false);
      this.newBoxForm.get('full').setValue(false);
    }else{
      this.newBoxForm.get('empty').setValue(true);
    }
    this.arichiveService.addBox(this.cell.id,this.newBoxForm.value).subscribe(box => {
      this.cell.boxes.push(box);
      this.saveing = false;
      this.modalService.dismissAll();
    })
  }

  newBox(context){
    
    this.newBoxForm = this.fb.group(
      {
        full: this.fb.control(true),
        empty: this.fb.control(false),
        old:this.fb.control(false),
        size:this.fb.control(null,Validators.required)
      }
    )
    this.modalService.open(context);
  }

  // get emptyBox():number[]{
  //   let count = this.cell.size;
  //   let max = 0;
  //   this.boxs.forEach(item => {
  //     count = count - item.size;
  //     if (item.seq > max){
  //       max = item.seq;
  //     }
  //   })
  //   let result:number[] = [];
  //   for(let i = 0 ; i<count ; i++){
  //     max++;
  //     result.push(max);
  //   }
  //   return result;
  // }

  // getPercentageOne():number{
  //   return  1 / this.cell.size * 100
  // }

  ngOnInit() {
    this.route.data.subscribe(data => {
      this.cell = data.cell;
    });
  }

}
