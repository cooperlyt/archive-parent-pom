import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Business } from '../model/business.model';
import { repo } from 'octicons';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { DomSanitizer } from '@angular/platform-browser';
import { SecrecyLevel } from '../enumData';
import { NgbDatepickerI18n } from '@ng-bootstrap/ng-bootstrap';
import { CustomDatepickerI18n, I18n } from '../../comm/datepicker-i18n';
import { BusinessService } from '../services/business.service';
import { catchError } from 'rxjs/operators';
import { EMPTY } from 'rxjs';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-complete',
  templateUrl: './complete.component.html',
  styleUrls: ['./complete.component.scss'],
  providers: [I18n, {provide: NgbDatepickerI18n, useClass: CustomDatepickerI18n}] 
})
export class CompleteComponent implements OnInit {

  business:Business;
  form: FormGroup;

  saveing:boolean = false;

  //TODO: 自动生成编号

  //TODO: 一个异步验证器 验证ID是否存在
  secrecyLevelList = Object.keys(SecrecyLevel).map(key => ({id: key,name:SecrecyLevel[key]}));

  constructor(private route: ActivatedRoute, 
    private router: Router,
    private services: BusinessService,
    private fb: FormBuilder,
    private toastr: ToastrService) {}

  //TODO: 一个联合难器 如果保密 那么期限不能为空
  get isSecrecy():boolean{
    return this.form.value.secrecyLevel !== 'None';
  }

  onSubmit(){
    this.saveing = true;
    this.services.saveVolume(this.business.id,this.form.value).pipe(
      catchError(err => {
        this.toastr.error('保存失败！');
        this.saveing = false;
        return EMPTY;
      })
    ).subscribe(id => {
    
      this.router.navigate(["/business-view/",id,"details"])
    });
  }

  ngOnInit() {
    this.route.data.subscribe(data => {
      this.business = data.business;
      this.form = this.fb.group({
        id: [null,[Validators.required,Validators.maxLength(15)]],
        recordTime: [new Date()],
        secrecyLevel: [null, Validators.required],
        secrecyLen: [null],
        old: [false,Validators.required],
        memo: [null]
      });
    });
    
  }

}
