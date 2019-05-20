import { Component, OnInit, Input } from '@angular/core';
import { CorpIdType, IdentityType } from '../../business/enumData';
import { FormGroup } from '@angular/forms';

@Component({
  selector: 'app-corp-editor',
  templateUrl: './corp-editor.component.html',
  styleUrls: ['./corp-editor.component.scss']
})
export class CorpEditorComponent implements OnInit {

  @Input() formGroup: FormGroup;

  corpIdTypeList =  Object.keys(CorpIdType).map(key => ({id: key,name:CorpIdType[key]}));

  identityTypeList = Object.keys(IdentityType).map(key => ({id: key,name:IdentityType[key]}));

  constructor() { }

  ngOnInit() {
  }

}
