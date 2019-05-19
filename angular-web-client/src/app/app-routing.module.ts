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
import { BusinessEditComponent } from './business/business-edit/business-edit.component';
import { BusinessEditResolver } from './business/business-edit/business-edit.resolve';
import { BusinessFieldEditorResolver } from './business/business-edit/business-field-editor.resolve';
import { BusinessSearchComponent } from './business/business-search/business-search.component';
import { BusinessSearchResolver } from './business/business-search/business-search.resolve';
import { UsedDefineResolver } from './business/business-search/used-define.resolve';
import { RoomComponent } from './archives/room/room.component';
import { RoomsResolver } from './archives/resolver/rooms.resolver';
import { CabinetComponent } from './archives/cabinet/cabinet.component';
import { RacksResolver } from './archives/resolver/racks.resolver';
import { CellComponent } from './archives/cell/cell.component';
import { CellsResolver } from './archives/resolver/cells.resolver';
import { BoxComponent } from './archives/box/box.component';
import { BoxsResolver } from './archives/resolver/boxs.resolver';
import { CellResolver } from './archives/resolver/cell.resolver';
import { RecordComponent } from './business/record/record.component';
import { CompleteComponent } from './business/complete/complete.component';
import { VolumeComponent } from './business/volume/volume.component';
import { VolumesItemResolver } from './business/resolver/volumes-item.resolver';
import { FunctionLayoutComponent } from './layouts/function-layout/function-layout.component';
import { CategoryListComponent } from './business/category-list/category-list.component';
import { TemplateCategoryResolver } from './business/resolver/template-category.resolver';
import { TemplateListComponent } from './business/template-list/template-list.component';
import { DefinesResolver } from './business/resolver/defines.resolver';
import { BusinessPatchComponent } from './business/business-patch/business-patch.component';



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
            path: 'business-patch/:box/:id',
            component: BusinessPatchComponent,
            resolve: {editor: BusinessCreateResolver}
          },
          {
            path: 'business-category',
            component: CategoryListComponent,
            resolve: {categories: TemplateCategoryResolver},
            children: [
              {
                path: ':id',
                component: TemplateListComponent,
                resolve: {defines: DefinesResolver}
              }
            ]
          },
          {
            path: 'business-record/:id',
            component: RecordComponent,
            resolve: {business: BusinessResolver, rooms: RoomsResolver}
          },
          {
            path: 'business-complete/:id',
            component: CompleteComponent,
            resolve: {business: BusinessResolver}
          },
          {
            path: 'rooms',
            component: RoomComponent,
            resolve: {rooms: RoomsResolver},
            children:[
              {
                path: ':id',
                component: CabinetComponent,
                resolve: {racks: RacksResolver},
                children:[
                  {
                    path: ':id',
                    component: CellComponent,
                    resolve: {cells: CellsResolver},
                    children:[
                      {
                        path: ':id',
                        component: BoxComponent,
                        resolve:{cell: CellResolver}
                      }
                    ]
                  }
                ]
              }
            ]
          },
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
