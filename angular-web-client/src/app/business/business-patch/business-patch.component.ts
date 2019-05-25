import { Component, OnInit } from '@angular/core';
import { FormArray, FormGroup, FormControl, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { BusinessService } from '../services/business.service';
import { ToastrService } from 'ngx-toastr';
import { SecrecyLevel } from '../enumData';
import { catchError } from 'rxjs/operators';
import { EMPTY } from 'rxjs';

@Component({
  selector: 'app-business-patch',
  templateUrl: './business-patch.component.html',
  styleUrls: ['./business-patch.component.scss']
})
export class BusinessPatchComponent  implements OnInit {

  form: FormGroup;

  saveing: boolean = false;

  secrecyLevelList = Object.keys(SecrecyLevel).map(key => ({id: key,name:SecrecyLevel[key]}));

  get fields() {
    return this.form.get('fields') as FormArray;
  }

  get isSecrecy():boolean{
    return this.form.value.volume.secrecyLevel !== 'None';
  }

  onCorpChange(event){
    console.log(event);
    if (event){
      this.form.get('deliver').setValue(event.name);
    }else{
      this.form.get('deliver').setValue(null);
    }
  }
  
  constructor(private _route: ActivatedRoute,private _router:Router, private _businessService: BusinessService,private toastr: ToastrService) { 
  }

  ngOnInit() {
    this._route.data.subscribe(
      data => {
        this.form = data.editor; 

        this.form.get('status').setValue('RECORDED');
        this.form.get('source').setValue('AFTER');
        this.form.addControl('volume',new FormGroup({
              id: new FormControl(null,Validators.required),
              boxId: new FormControl(this._route.snapshot.params.box),
              pageCount: new FormControl(0),
              secrecyLevel: new FormControl(null,Validators.required),
              recordTime: new FormControl(null,Validators.required),
              secrecyLen: new FormControl(null),
              old: new FormControl(true),
              memo: new FormControl(null)
            }));
         
   
        
        }
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
        this._router.navigate(["/business-volume/" + data]);
      }
    });
  }

}
