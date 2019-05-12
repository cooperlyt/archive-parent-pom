import { Component, OnInit, Input, SimpleChanges } from '@angular/core';
import { FormGroup, FormArray, AbstractControl } from '@angular/forms';

export const PERSON_CERTIFICATE_TYPE = {
  MASTER_ID:"身份证",
  SOLDIER_CARD:"士兵证",
  OFFICER_CARD:"军官证",
  PASSPORT:"护照",
  TW_ID:"台湾通行证",
  GA_ID:"港澳通行证",
  OTHER:"其它证件"
}

export const GROUP_CERTIFICATE_TYPE = {
  COMPANY_CODE:"营业执照",
  CORP_CODE:"机构代码证",
  RELIGIOUS_GROUP:"宗教组织证",
  OTHER:"其它证件"
}

@Component({
  selector: 'app-person-input',
  templateUrl: './person-input.component.html',
  styleUrls: ['./person-input.component.scss']
})
export class PersonInputComponent implements OnInit {



  @Input() form:FormGroup;
  @Input() formArray: string;
  @Input() fieldName: string;

  private getArrayControl(i:number):AbstractControl{
    return (this.form.get(this.formArray) as FormArray).at(i).get('value');
  }

  private typeControl(): AbstractControl{
    return this.getArrayControl(0);
  }

  private numberControl(): AbstractControl{
    return this.getArrayControl(1);
  }

  private nameControl(): AbstractControl{
    return this.getArrayControl(2);
  }


  constructor() { }

  ngOnInit() {
  }

  ngOnChanges(changes: SimpleChanges) {
    if (changes['formArray']){
      
    }
  }

}
