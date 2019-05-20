import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { JoinCorpSelectComponent } from './join-corp-select/join-corp-select.component';
import { AllCorpSelectComponent } from './all-corp-select/all-corp-select.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { NgSelectModule } from '@ng-select/ng-select';
import { SharedModule } from '../shared/shared.module';


@NgModule({
  declarations: [ JoinCorpSelectComponent, AllCorpSelectComponent],
  imports: [
    CommonModule,    
    FormsModule,
    ReactiveFormsModule,
    NgSelectModule,
    SharedModule,
  ],
  exports: [
    AllCorpSelectComponent, JoinCorpSelectComponent
  ],
  providers:[]
    
  
})
export class CorpModule { }
