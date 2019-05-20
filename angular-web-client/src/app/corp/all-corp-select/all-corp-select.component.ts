import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import { Corp } from '../model/corp.model';
import { CorpService } from '../services/corp.service';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { NgbModal, NgbActiveModal, NgbModalConfig } from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'ngbd-modal-corp-editor',
  template: `
  <form (ngSubmit)="onCorpSubmit()">
    <div class="modal-header">
      <h4 class="modal-title" id="modal-title">添加机构</h4>
      <button type="button" class="close" aria-describedby="modal-title" (click)="modal.dismiss('Cross click')">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="modal-body">
      
        <app-corp-editor ngbAutofocus [formGroup]="formGroup"></app-corp-editor>

    </div>
    <div class="modal-footer">
      <button  type="button" class="btn btn-outline-secondary" (click)="modal.dismiss('cancel click')">取消</button>
      <button type="submit" [disabled]="!formGroup.valid || saveing" class="btn btn-success" >
        <span *ngIf="saveing" class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
        <span *ngIf="!saveing">保存机构</span>
        <span *ngIf="saveing">正在保存机构信息...</span>
        
      </button>
    </div>
    </form>
  `
})
export class CorpEditorModal{

  formGroup: FormGroup;

  saveing = false;

  onCorpSubmit(){
    this.saveing = true;
    this.corpService.saveCorp(this.formGroup.value).subscribe(data =>{
      this.saveing = false;
      this.modal.close(data);
    });
  }

  constructor(public modal: NgbActiveModal, private fb: FormBuilder,private corpService: CorpService){
    this.formGroup = fb.group({
      id: fb.control(null),
      name: fb.control(null,[Validators.required,Validators.maxLength(128)]),
      corpIdType: fb.control(null,Validators.required),
      number: fb.control(null,[Validators.required,Validators.maxLength(32)]),
      ownerName: fb.control(null,[Validators.required,Validators.maxLength(64)]),
      ownerIdType: fb.control(null,Validators.required),
      ownerIdNumber: fb.control(null,[Validators.required,Validators.maxLength(32)]),
      address: fb.control(null,Validators.maxLength(256)),
      tel: fb.control(null,Validators.maxLength(16)),
      description: fb.control(null,Validators.maxLength(256)),
      version:fb.control(1),
      enable: fb.control(true)

    })
  }

}


@Component({
  selector: 'app-all-corp-select',
  template: `              
    <div class="row">
      <div class="col" [formGroup]="formGroup">
          <ng-select (change)="onCorpChange($event)" [formControlName]="controlName" [loading]="loading" [items]="corps" bindLabel="name" bindValue="id" notFoundText="没有符合条件的选项"></ng-select>
      </div>
      <div class="col-1">
          <button type="button" class="btn btn-git btn-success" (click)="openEditorModal()"><span octicon="plus"></span></button> 
      </div>
    </div>
    `
})
export class AllCorpSelectComponent implements OnInit {

  @Input() controlName:string;
  @Input() formGroup: FormGroup;

  @Output() corpChange: EventEmitter<any> = new EventEmitter();

  corps: Corp[];

  loading = true;

  onCorpChange(event){
    this.corpChange.emit(event);
  }

  constructor(private corpService: CorpService,private modalService: NgbModal) { }

  openEditorModal(){
    this.modalService.open(CorpEditorModal,{ size: 'lg' ,backdrop : 'static' , keyboard: false}).result.then(value => this.corps = [value,...this.corps]);

  }

  ngOnInit() {
    this.corpService.listValidCorp().subscribe(corps => {this.corps = corps; this.loading = false});
  }

}
