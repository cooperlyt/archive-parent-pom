import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { environment } from '../../../environments/environment';
import { Observable } from "rxjs";
import { BusinessDefine } from '../model/business-define.model';
import { map, tap  } from "rxjs/operators";
import { FormGroup, FormControl, FormArray, Validators } from '@angular/forms';
import { FieldGroup } from '../model/field-group.model';
import { FieldDefine } from '../model/field-define.model';
import { genUUID } from '../../comm/uuid';
import { Business } from '../model/business.model';
import { DateTimeValidator } from '../../comm/data-time.validator';
import { genBusinessSearchKey } from '../custom-component';
import { VolumeContext } from '../model/volume-context.model';
import { ValueGroup } from '../model/value-group.model';
import { Operation } from '../model/operation.model';

@Injectable({
  providedIn: 'root'
})
export class BusinessService {

  constructor(private _http: HttpClient) { }

  listUsedDefine():Observable<any>{
    return this._http.get(`${environment.apiUrl}/business/v1/used-define`);
  }

  search(page: number, key: string | null , define?:string):Observable<any>{
    let params = new HttpParams().set("page",page.toString()); //Create new HttpParams
    if (!!key){
      params = params.append("key", key);
    }
    if (define){
      params = params.append("define", define);
    }
    console.log("search business params:", JSON.stringify(params));
    return this._http.get<any>(`${environment.apiUrl}/business/v1/search`,{params: params});
  }

  listOperation(id:string):Observable<Operation[]>{
    return this._http.get<Operation[]>(`${environment.apiUrl}/business/v1/business/operations/${id}`);
  }

  getBusiness(id:string):Observable<Business>{
    return this._http.get<Business>(`${environment.apiUrl}/business/v1/business/${id}`);
  }

  getBusinessFields(id:string):Observable<ValueGroup[]>{
    return this._http.get<ValueGroup[]>(`${environment.apiUrl}/business/v1/business/field/${id}`);
  }

  getVolumeContext(id: string):Observable<VolumeContext[]>{
    return this._http.get<VolumeContext[]>(`${environment.apiUrl}/business/v1/business/context/${id}`).pipe(
      map((data  : VolumeContext[]) => {
        return data.sort((c1,c2) => {
          return (c1.ordinal == c2.ordinal) ? 0 : (c1.ordinal < c2.ordinal ? -1 : 1)
        });
      })
    );
  }

  deleteBusiness(id:string):Observable<string>{
    return this._http.delete<any>(`${environment.apiUrl}/business/v1/business/${id}`).pipe(
      map(data => data.id)
    )
  }
  deleteVolumeContext(id: string):Observable<string>{
    return this._http.delete<any>(`${environment.apiUrl}/business/v1/business/content/delete/${id}`).pipe(
      //tap(data => {this._http.delete(`${environment.fileUrl}/`)}),
      map(data => data.id)
    );
  }

  clearVolumeContext(id: string):Observable<number>{
    return this._http.delete<any>(`${environment.apiUrl}/business/v1/business/content/clear/${id}`).pipe(
      map(data => data.count)
    );
  }

  updateVolumeContexts(businessId: string , context: VolumeContext[]):Observable<number>{
    return this._http.put<any>(`${environment.apiUrl}/business/v1/business/content/all/${businessId}`,context).pipe(
      map(data => data.count)
    );
  }

  listDefineSummary():Observable<any>{
    return this._http.get(`${environment.apiUrl}/template/v1/mine`);
  }

  getBusinessDefine(id:string):Observable<BusinessDefine>{
    return this._http.get<BusinessDefine>(`${environment.apiUrl}/template/v1/define/${id}`);
  }

  getTopBusiness():Observable<any>{
    return this._http.get<any>(`${environment.apiUrl}/business/v1/list/top`);
  }

  createBusiness(business: Business):Observable<string>{
    genBusinessSearchKey(business);
    return this._http.post<any>(`${environment.apiUrl}/business/v1/new`,business).pipe(map(data => data.id));
  }

  putVolumeContext(context: VolumeContext,businessId: string):Observable<string>{
    return this._http.put<any>(`${environment.apiUrl}/business/v1/business/context/${businessId}`,context).pipe(
      map(data => data.id)
    );
  }

  private newFieldControl(groupType:string,groupOption:any, option: any, value?: any|null): FormControl{
    let valids = [];
    if (option){
      switch (groupType){
        
        case 'SIMPLE' : {
          if (!option.nullable){
            valids.push(Validators.required);
          }

          if (option.min){
            valids.push(Validators.min(option.min));
          }
          if (option.minLength){
            valids.push(Validators.minLength(option.minLength));
          }

          if (option.max){
            valids.push(Validators.max(option.max))
          }

          if (option.maxLength){
            valids.push(Validators.maxLength(option.maxLength))
          }

          if (option.editPattern){
            valids.push(Validators.pattern(option.editPattern))
          }

          if (option.controlType === 'datepicker'){
            valids.push(DateTimeValidator)
          }

          break;
        }
        case 'TEXT_AREA' : {
          if (!groupOption.nullable){
            valids.push(Validators.required);
          }
          break;
        }

      }
    }

    if (valids.length === 0){
      return new FormControl(value);
    }else if (valids.length === 1){
      return new FormControl(value,valids[0]);
    }else{
      return new FormControl(value,Validators.compose(valids));
    }
  }


  private newGroupFormControl(controls:any,groupDefine:FieldGroup):FormGroup{
    let valids = [];

    switch (groupDefine.type){
      case 'CONSTRUCT_CORP':{
        for(let i=0;i<3;i++){
          (controls['fieldDefines'] as FormArray).push(
            new FormGroup({
              value: ((i===1) && groupDefine.option && !groupDefine.option.nullable) ? new FormControl(null,Validators.required) : new FormControl(null),
              ordinal: new FormControl(i),
            })
          )
        }
        break;
      }
      
      default :{
        groupDefine.fieldDefines = groupDefine.fieldDefines.sort((f1,f2) => {return (f1.ordinal == f2.ordinal) ? 0 : (f1.ordinal < f2.ordinal ? -1 : 1)})

        groupDefine.fieldDefines.forEach(
          field => {
            let fieldDefine = new FormGroup({
              pattern: new FormControl((field.option && field.option.viewPattern) ? field.option.viewPattern : null),
              value: this.newFieldControl(groupDefine.type,groupDefine.option,field.option),
              label: new FormControl((field.option && field.option.label) ? field.option.label : null),
              ordinal: new FormControl(field.ordinal),
              option: new FormControl(field.option)
            });
            (controls['fieldDefines'] as FormArray).push(fieldDefine);
          }
        );
      }
    }

  
    if (valids.length === 0){
      return new FormGroup(controls);
    }else if (valids.length === 1){
      return new FormGroup(controls,valids[0]);
    }else{
      return new FormGroup(controls,Validators.compose(valids));
    }
  }

  editorFields(id:string):Observable<FormArray>{
    return this._http.get<any>(`${environment.apiUrl}/business/v1/business/field/${id}`).pipe(
      map(group =>{
        let result = new FormArray([]);

        group.forEach(field => {
          let fieldGroup = new FormGroup({
            id:new FormControl(field.id),
            name:new FormControl(field.name),
            type:new FormControl(field.type),
            ordinal:new FormControl(field.ordinal),
            row:new FormControl(field.row),
            define: new FormControl(field.define),
            option:new FormControl(field.option),
            fieldDefines: new FormArray([])
          });
          result.push(fieldGroup);
          field.fieldDefines.forEach(value =>{
            let fieldDefine = new FormGroup({
              id:new FormControl(value.id),
              pattern: new FormControl(value.pattern),
              value: this.newFieldControl(field.type,field.option,value.option,value.value),
              label: new FormControl(value.label),
              ordinal: new FormControl(value.ordinal),
              option: new FormControl(value.option)
            });
            (fieldGroup.get('fieldDefines') as FormArray).push(fieldDefine);
          });

        })

        return result;
      })
    );
  }

  editorBusiness(id:string):Observable<FormGroup>{
    return this._http.get<any>(`${environment.apiUrl}/business/v1/business/${id}`).pipe(
      map((business:Business) => {
        return new FormGroup({
          id: new FormControl(business.id),
          defineId: new FormControl(business.defineId),
          defineName: new FormControl(business.defineName),
          defineVersion: new FormControl(business.defineVersion),
          deliver: new FormControl(business.deliver),
          deliverId: new FormControl(business.deliverId,Validators.required),
          receiveDate: new FormControl(business.receiveDate,Validators.required),
          memo: new FormControl(business.memo),
          summary: new FormControl(business.summary),
          status: new FormControl(business.status),
          source: new FormControl(business.source),
          version: new FormControl(business.version),
          corpType: new FormControl(business.corpType,Validators.required),
          seq: new FormControl(business.seq)
          //fields:  new FormArray([])
        });
      })
    );
  }

  createNewBusiness(id: string):Observable<FormGroup>{
    return this._http.get<any>(`${environment.apiUrl}/template/v1/define/${id}`).pipe(
      map((define:BusinessDefine)  => {
        let result = new FormGroup({
          id: new FormControl(null),
          defineId: new FormControl(define.id),
          defineName: new FormControl(define.businessCategory.name + "/" + define.name),
          defineVersion: new FormControl(define.defineVersion),
          deliver: new FormControl(null),
          deliverId: new FormControl(null,Validators.required),
          receiveDate: new FormControl(new Date(),Validators.required),
          memo: new FormControl(null),
          summary: new FormControl(define.summary),
          status: new FormControl('CREATED'),
          source: new FormControl("INPUT"),
          version: new FormControl(0),
          corpType: new FormControl(null,Validators.required),
          fields:  new FormArray([])
        });

        let fields = define.fields.sort((f1,f2) => {
          return (f1.editorOrdinal == f2.editorOrdinal) ? 0 : (f1.editorOrdinal < f2.editorOrdinal ? -1 : 1);
        });
        fields.forEach(
          group => {
            let fieldGroup = this.newGroupFormControl({
              id:new FormControl(genUUID()),
              name:new FormControl(group.name),
              type:new FormControl(group.type),
              ordinal:new FormControl(group.editorOrdinal),
              row:new FormControl(group.viewRow),
              define: new FormControl(group.id),
              option:new FormControl(group.option),
              fieldDefines: new FormArray([])
            },group);

            (result.get('fields') as FormArray).push(fieldGroup);
            
          }
        );
        
        return result;
      })
    );
  }
}
