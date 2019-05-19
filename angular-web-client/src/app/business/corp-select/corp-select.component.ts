import { Component, OnInit, Input, AfterViewChecked, OnChanges, SimpleChanges } from '@angular/core';
import { FormGroup, FormArray, FormControl } from '@angular/forms';
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

  get typeValue():string{
    if (this.formArray){
      return this.form.value[this.formArray][0]['value'];
    }else if (this.typeKey){
      return this.form.value[this.typeKey];
    }else {
      return null;
    }
  }

  get valueFormGroup():FormGroup{
    if (this.formArray){
      return (this.form.get(this.formArray) as FormArray).at(1) as FormGroup;
    }else{
      return this.form;
    }
  }

  constructor() { }


  private typeChange(value:string){
    if (value && (this.typeValue != value)){


      this.getIdControl().setValue("");
      this.getNameControl().setValue("");


    }else if (!value){
      this.getIdControl().setValue("");
      this.getNameControl().setValue("");
    }
  }

  corpChange(event){
    if (event){
      this.getNameControl().setValue(event.name);
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

  }

  ngOnInit() {
  }

}
