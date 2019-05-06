import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { FormArray, FormGroup} from '@angular/forms';
import { BusinessService } from '../services/business.service';
import { catchError } from 'rxjs/operators';
import { EMPTY } from 'rxjs';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-business-create',
  templateUrl: './business-create.component.html',
  styleUrls: ['./business-create.component.scss']
})
export class BusinessCreateComponent implements OnInit {

  form: FormGroup;

  saveing: boolean = false;



  get fields() {
    return this.form.get('fields') as FormArray;
  }


  constructor(private _route: ActivatedRoute,private _router:Router, private _businessService: BusinessService,private toastr: ToastrService) { 
  }

  ngOnInit() {
    this._route.data.subscribe(
      data => {this.form = data.editor; console.log(this.form.value)}
    );
  }

  onSubmit(){
    this.saveing = true;
    this._businessService.createBusiness(this.form.value).pipe(
      catchError(err=>{
        this.saveing = false;
        this.toastr.error('不能连接到服务器，请稍后再试！', '服务错误!');
        return EMPTY;
      })
    ).subscribe(data => {
      console.log("save success: " + data);
      if (data){
        this._router.navigate(["/business-file/" + data]);
      }
    });
  }

  

}
