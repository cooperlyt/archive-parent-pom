import { Component, OnInit, Input, SimpleChanges, enableProdMode } from '@angular/core';
import { FormGroup, FormArray, ValidationErrors} from '@angular/forms';
import { FieldGroup } from '../../model/field-group.model';
import { NgbDatepickerI18n } from '@ng-bootstrap/ng-bootstrap';
import { I18n, CustomDatepickerI18n } from '../../../comm/datepicker-i18n';

@Component({
  selector: 'app-field-input',
  templateUrl: './field-input.component.html',
  styleUrls: ['./field-input.component.scss']
})
export class FieldInputComponent implements OnInit {

 // @Input() fieldGroup: FieldGroup;
  @Input() formGroup: FormGroup;

  get fields(): FormArray{
    return this.formGroup.get('fieldDefines') as FormArray;
  }

  constructor() { }

  ngOnInit() {
  }

  ngOnChanges(changes: SimpleChanges) {

  }

  geterror(index:number):any{
    return (this.formGroup.get('fieldDefines') as FormArray).at(index).get('value').errors;
  }


  get isValid() { return this.formGroup.get('fieldDefines').valid; }

}
