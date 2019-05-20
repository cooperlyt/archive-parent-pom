import { NgModule } from '@angular/core';
import { RouterModule, Routes} from '@angular/router';
import { ModuleWithProviders } from '@angular/compiler/src/core';

const CorpRouter: Routes = [

];

@NgModule({
  imports: [
    RouterModule.forChild(CorpRouter),
  ]
})
export class CorpRoutingModule { }