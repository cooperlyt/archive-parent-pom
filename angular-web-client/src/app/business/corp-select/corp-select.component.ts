import { Component, OnInit, Input, AfterViewChecked, OnChanges, SimpleChanges } from '@angular/core';
import { FormGroup, FormArray, FormControl } from '@angular/forms';
import { CorpService } from '../services/corp.service';
import { CorpSummary } from '../model/corp-summary.model';
import { CORP_TYPE } from '../enumData';


@Component({
  selector: 'app-corp-select',
  templateUrl: './corp-select.component.html',
  styleUrls: ['./corp-select.component.scss']
})
export class CorpSelectComponent implements OnInit {

  @Input() form: FormGroup;
  @Input() typeKey: string;
  @Input() idKey: string;
  @Input() nameKey: string;

  @Input() formArray: string;

  corpNoFoundText:string = "请选择公司类型";

  corpType = CORP_TYPE;

  typeList = Object.keys(CORP_TYPE).map(key => ({id: key,name:CORP_TYPE[key]}));

  private getTypeControl(): FormControl{
    if (this.formArray){
      return (this.form.get(this.formArray) as FormArray).at(0).get("value") as FormControl;
    }else{
      return this.form.get(this.typeKey) as FormControl;
    }
  }

  private getIdControl(): FormControl{
    if (this.formArray){
      return (this.form.get(this.formArray) as FormArray).at(1).get("value") as FormControl;
    }else{
      return this.form.get(this.idKey) as FormControl;
    }
  }

  private getNameControl(): FormControl{
    if (this.formArray){
      return (this.form.get(this.formArray) as FormArray).at(2).get("value") as FormControl;
    }else{
      return this.form.get(this.nameKey) as FormControl;
    }
  }

  private getTypeValue():string{
    if (this.formArray){
      return this.form.value[this.formArray][0]['value'];
    }else if (this.typeKey){
      return this.form.value[this.typeKey];
    }else {
      return null;
    }
  }

  constructor(private _corpService: CorpService) { }

  corpList: CorpSummary[] = [];
  load: boolean = false;

  private typeChange(value:string){
    if (value && (this.getTypeValue() != value)){
      this.load = true;

      this.getIdControl().setValue("");
      this.getNameControl().setValue("");
      this.corpList = [];
      this.corpNoFoundText = '请选择公司类型';
      this._corpService.getCorpByType(value).subscribe((res:CorpSummary[]) => {
        this.corpList = res;
        this.load = false;
        this.corpNoFoundText = '没有符合条件的选项';
      });
    }else if (!value){
      this.getIdControl().setValue("");
      this.getNameControl().setValue("");
      this.corpList = [];
      this.corpNoFoundText = '请选择公司类型';
    }
  }

  private corpChange(value:string){
    if (value){
      this.getNameControl().setValue(this.corpList.find(data => data.id === value).name);
    }else{
      this.getNameControl().setValue(null);
    }    
  }

  ngOnChanges(changes: SimpleChanges) {
    if (changes['formArray']){
        this.getTypeControl().valueChanges.subscribe(value => this.typeChange(value));
        this.getIdControl().valueChanges.subscribe(value => this.corpChange(value));

    }
    

    if (changes['typeKey']){
      this.form.get(this.typeKey).valueChanges.subscribe(value => this.typeChange(value));
    }
    if (changes['idKey']){
      this.form.get(this.idKey).valueChanges.subscribe(value => this.corpChange(value));
    }

    if (this.getTypeValue()){
      this.load = true;
      this._corpService.getCorpByType(this.getTypeValue()).subscribe((res:CorpSummary[]) => {
        this.corpList = res;
        this.load = false;
        this.corpNoFoundText = '没有符合条件的选项';
      });
    }
  }

  ngOnInit() {
  }

}
