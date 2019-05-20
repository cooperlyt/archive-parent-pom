import { Component, OnInit, Input, SimpleChanges, Output, EventEmitter } from '@angular/core';
import { CorpService } from '../services/corp.service';
import { CorpSummary } from '../model/corp-summary.model';
import { FormGroup } from '@angular/forms';

@Component({
  selector: 'app-join-corp-select',
  template: `<div [formGroup]="formGroup"><ng-select (change)="onValueChange($event)" [formControlName]="controlName" [items]="corpList" bindLabel="name" bindValue="id" [loading]="loading" loadingText="正在加载..." [notFoundText]="notFoundText"></ng-select></div>`
})
export class JoinCorpSelectComponent implements OnInit {

  @Input() controlName:string;
  @Input() type:string;
  @Input() formGroup: FormGroup;

  @Output() corpChange: EventEmitter<any> = new EventEmitter();

  loading = false;
  notFoundText = '请选择类型'; //'没有符合条件的选项'

  corpList: CorpSummary[];

  constructor(private corpService: CorpService) { }

  onValueChange(event){
    this.corpChange.emit(event);
  }

  ngOnInit() {
  }

  ngOnChanges(changes: SimpleChanges) {
    if (changes['type']){
      this.corpList = [];
      console.log('corp type change:',changes['type'].currentValue)
      if (changes['type'].currentValue){
        this.loading = true; 
        this.corpService.getCorpByType(changes['type'].currentValue).subscribe(data => {
          this.corpList = data;
          this.loading = false;
          this.notFoundText = '没有符合条件的选项'
        });
      }else{
        this.loading = false;
        this.notFoundText = '请选择类型';
      }

    }
  }
}
