import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import { Corp } from '../model/corp.model';
import { CorpService } from '../services/corp.service';
import { FormGroup } from '@angular/forms';

@Component({
  selector: 'app-all-corp-select',
  template: `              
    <div class="row">
      <div class="col" [formGroup]="formGroup">
          <ng-select (change)="onCorpChange($event)" [formControlName]="controlName" [loading]="loading" [items]="corps" bindLabel="name" bindValue="id" notFoundText="没有符合条件的选项"></ng-select>
      </div>
      <div class="col-1">
          <button class="btn btn-git btn-success" ><span octicon="plus"></span></button> 
      </div>
    </div>
    `
})
export class AllCorpSelectComponent implements OnInit {

  @Input() controlName:string;
  @Input() formGroup: FormGroup;

  @Output() corpChange: EventEmitter<any> = new EventEmitter();

  corps: Corp[];

  loading = true;

  onCorpChange(event){
    this.corpChange.emit(event);
  }

  constructor(private corpService: CorpService) { }

  ngOnInit() {
    this.corpService.listValidCorp().subscribe(corps => {this.corps = corps; this.loading = false});
  }

}
