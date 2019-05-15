import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { FormGroup, FormArray } from '@angular/forms';
import { BusinessService } from '../services/business.service';
import { ToastrService } from 'ngx-toastr';
import { catchError } from 'rxjs/operators';
import { EMPTY } from 'rxjs';

@Component({
  selector: 'app-edit',
  templateUrl: './business-edit.component.html',
  styleUrls: ['./business-edit.component.scss']
})
export class BusinessEditComponent implements OnInit {

  form: FormGroup;


  saveing: boolean = false;



  get fields() {
    return this.form.get('fields') as FormArray;
  }

  constructor(private _route: ActivatedRoute,private _router:Router, private _businessService: BusinessService,private toastr: ToastrService) { }

  ngOnInit() {
    this._route.data.subscribe(data => {
      this.form = data.business;
      this.form.addControl("fields", data.field);
      console.log("edit business:", this.form.value);
    })
  }

  onSubmit(){
    this.saveing = true;
    this._businessService.createBusiness(this.form.value).pipe(
      catchError(err=>{
        this.saveing = false;
        if (err.status < 500){
          this.toastr.error('不能连接到服务器，请稍后再试！', '服务错误!');
        }
        return EMPTY;
      })
    ).subscribe(data => {
      this.saveing = false;
      console.log("save success: " + data);
      if (data){
        this._router.navigate([`/business-view/${this.form.value.id}/details`]);
      }
    });
  }

}