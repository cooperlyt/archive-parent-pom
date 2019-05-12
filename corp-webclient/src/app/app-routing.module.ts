import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeLayoutComponent } from './layouts/home-layout/home-layout.component';
import { AuthGuard } from './auth/auth.guard';
import { HomeComponent } from './home/home.component';
import { FunctionLayoutComponent } from './layouts/function-layout/function-layout.component';
import { BusinessCreateComponent } from './business/business-create/business-create.component';
import { BusinessCreateResolver } from './business/business-create/business-create.resolve';
import { BusinessSearchComponent } from './business/business-search/business-search.component';
import { BusinessSearchResolver } from './business/business-search/business-search.resolve';
import { UsedDefineResolver } from './business/business-search/used-define.resolve';
import { BusinessEditComponent } from './business/business-edit/business-edit.component';
import { BusinessEditResolver } from './business/business-edit/business-edit.resolve';
import { BusinessFieldEditorResolver } from './business/business-edit/business-field-editor.resolve';
import { BusinessViewComponent } from './business/business-view/business-view.component';
import { BusinessResolver } from './business/resolver/business.resolver';
import { FileGalleryComponent } from './business/file-gallery/file-gallery.component';
import { DetailsComponent } from './business/details/details.component';
import { BusinessFieldResolver } from './business/resolver/business-field.resolver';
import { LoginLayoutComponent } from './layouts/login-layout/login-layout.component';
import { LoginComponent } from './login/login.component';
import { VolumesItemResolver } from './business/resolver/volumes-item.resolver';
import { OperationsComponent } from './business/operations/operations.component';
import { OperationResolver } from './business/resolver/operation.resolver';
import { VolumeComponent } from './business/volume/volume.component';
import { FileUploadComponent } from './business/file-upload/file-upload.component';


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
        path: '',
        component: FunctionLayoutComponent,
        children:[
          {
            path: 'business-create/:id',
            component: BusinessCreateComponent,
            resolve: {editor: BusinessCreateResolver}
          },
          {
            path: 'business-volume/:id',
            component: VolumeComponent,
            resolve: {business: BusinessResolver, items: VolumesItemResolver},
            children: [
              {
                path: ":id",
                component: FileUploadComponent
              }
            ]
          },
          {
            path: 'business-search',
            component: BusinessSearchComponent,
            resolve: {page: BusinessSearchResolver, defines: UsedDefineResolver},
            runGuardsAndResolvers: 'paramsOrQueryParamsChange'
          },
          {
            path: 'business-edit/:id',
            component: BusinessEditComponent,
            resolve: {business: BusinessEditResolver, field: BusinessFieldEditorResolver}
    
          },
          {
            path: 'business-view/:id',
            component: BusinessViewComponent,
            resolve: {business: BusinessResolver},
            children:[
              {
                path: 'files',
                component: FileGalleryComponent,
                resolve: { business: BusinessResolver, items: VolumesItemResolver},
                
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
