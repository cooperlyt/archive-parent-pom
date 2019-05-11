import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { LoginComponent } from './login/login.component';
import { HomeLayoutComponent } from './layouts/home-layout/home-layout.component';
import { AuthGuard } from './auth/auth.guard';
import { LoginLayoutComponent } from './layouts/login-layout/login-layout.component';
import { BusinessCreateComponent } from './business/business-create/business-create.component';
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
var routes = [
    {
        path: '',
        component: HomeLayoutComponent,
        canActivate: [AuthGuard],
        children: [
            {
                path: '',
                component: HomeComponent // {3}
            },
            {
                path: 'business-create/:id',
                component: BusinessCreateComponent,
                resolve: { editor: BusinessCreateResolver }
            },
            {
                path: 'business-file/:id',
                component: FileUploadComponent,
                resolve: { business: BusinessResolver, content: VolumeContentResolver }
            },
            {
                path: 'business-view/:id',
                component: BusinessViewComponent,
                resolve: { business: BusinessResolver },
                children: [
                    {
                        path: 'files',
                        component: FileGalleryComponent,
                        resolve: { content: VolumeContentResolver }
                    },
                    {
                        path: 'details',
                        component: DetailsComponent,
                        resolve: { business: BusinessResolver, fields: BusinessFieldResolver }
                    },
                    {
                        path: 'operations',
                        component: OperationsComponent,
                        resolve: { operations: OperationResolver }
                    }
                ]
            }
        ]
    },
    {
        path: '',
        component: LoginLayoutComponent,
        children: [
            {
                path: 'login',
                component: LoginComponent // {5}
            }
        ]
    }
];
var AppRoutingModule = /** @class */ (function () {
    function AppRoutingModule() {
    }
    AppRoutingModule = tslib_1.__decorate([
        NgModule({
            imports: [RouterModule.forRoot(routes)],
            exports: [RouterModule]
        })
    ], AppRoutingModule);
    return AppRoutingModule;
}());
export { AppRoutingModule };
//# sourceMappingURL=app-routing.module.js.map