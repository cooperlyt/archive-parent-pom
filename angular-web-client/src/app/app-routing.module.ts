import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { LoginComponent } from './login/login.component';
import { HomeLayoutComponent } from './layouts/home-layout/home-layout.component';
import { AuthGuard } from './auth.guard';
import { LoginLayoutComponent } from './layouts/login-layout/login-layout.component';
import { BusinessCreateComponent } from './business-create/business-create.component';
import { BusinessCreateResolver } from './business-create/business-create.resolve';



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
        resolve: {business: BusinessCreateResolver}
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
