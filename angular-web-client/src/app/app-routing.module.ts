import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { LoginComponent } from './login/login.component';
import { HomeLayoutComponent } from './layouts/home-layout/home-layout.component';
import { AuthGuard } from './auth/auth.guard';
import { LoginLayoutComponent } from './layouts/login-layout/login-layout.component';
import { BusinessCreateComponent } from './business/business-create/business-create.component';
import { BusinessDefineResolver } from './business/comm/resolve/business-define.resolve';
import { BusinessCreateResolver } from './business/business-create/business-create.resolve';
import { FileUploadComponent } from './business/file-upload/file-upload.component';
import { BusinessResolver } from './business/resolver/business.resolver';



const routes: Routes = [
  {
    path: '',                       // {1}
    component: HomeLayoutComponent,
    canActivate: [AuthGuard],       // {2}
    children: [
      {
        path: '',
        component: HomeComponent   // {3}
      },
      {
        path: 'business-create/:id',
        component: BusinessCreateComponent,
        resolve: {editor: BusinessCreateResolver}
      },
      {
        path: 'business-file/:id',
        component: FileUploadComponent,
        resolve: {business: BusinessResolver}
      }
    ]
  },
  {
    path: '',
    component: LoginLayoutComponent, // {4}
    children: [
      {
        path: 'login',
        component: LoginComponent   // {5}
      }
    ]
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
