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
import { BusinessViewComponent } from './business/business-view/business-view.component';
import { FileGalleryComponent } from './business/file-gallery/file-gallery.component';
import { VolumeContentResolver } from './business/resolver/volume-content.resolver';
import { DetailsComponent } from './business/details/details.component';
import { BusinessFieldResolver } from './business/resolver/business-field.resolver';
import { OperationsComponent } from './business/operations/operations.component';
import { OperationResolver } from './business/resolver/operation.resolver';



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
        resolve: {business: BusinessResolver, content: VolumeContentResolver}
      },
      {
        path: 'business-view/:id',
        component: BusinessViewComponent,
        resolve: {business: BusinessResolver},
        children:[
          {
            path: 'files',
            component: FileGalleryComponent,
            resolve: {content: VolumeContentResolver}
          },
          {
            path: 'details',
            component: DetailsComponent,
            resolve: {business: BusinessResolver, fields: BusinessFieldResolver}
          },
          {
            path: 'operations',
            component: OperationsComponent,
            resolve:{operations: OperationResolver}
          }

        ]
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
