import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Business } from '../model/business.model';
import { FileUploadService, Items } from './file-upload.service';
import { FileUploader } from 'ng2-file-upload';
import { BusinessService } from '../services/business.service';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-volume',
  templateUrl: './volume.component.html',
  styleUrls: ['./volume.component.scss'],
  providers:[FileUploadService]
})
export class VolumeComponent implements OnInit {

  saveing = false;
  newItemName:string;

  business:Business;




  get items():Items[]{
    return Object["values"](this.fileUploadService.items);
  }
  get uploader():FileUploader{
    return this.fileUploadService.uploader;
  }

  get cancelCount():number{
    return this.fileUploadService.cancelCount;
  }

  get allUploadItemCount():number{
    return this.fileUploadService.allUploadItemCount;
  }

  get waitUpdateCount():number{
    return this.fileUploadService.waitUpdateCount;
  }

  get pageCountTotal():number{
    return this.fileUploadService.pageCountTotal;
  }

  constructor(private route: ActivatedRoute,
    private _modalService: NgbModal,
    private fileUploadService: FileUploadService,
    private router: Router) {

  }

  deleteAllConfirme(content){
    this._modalService.open(content);
  }




  openFileOverModal(event,content){
    this._modalService.dismissAll("reopen");
    this._modalService.open(content,{ size: 'lg' ,centered: true});
  }

  addItem(){
    this.fileUploadService.addItem(this.newItemName);
    this.newItemName = null;
  }
  
  ngOnInit() {
    this.route.data.subscribe(data => {
      this.business = data.business;
      this.fileUploadService.OnInit(data.business.id,data.items);
      this.fileUploadService.onAfterAddingFile$.subscribe(_ => this._modalService.dismissAll("added"));
      
      if (data.items[0] && !this.route.firstChild){
          this.router.navigate([data.items[0].id],{relativeTo: this.route});
      }
    })

  }

}
