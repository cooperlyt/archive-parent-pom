import { BrowserModule ,Title} from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

import { HttpClientModule, HTTP_INTERCEPTORS }    from '@angular/common/http';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

import { FontAwesomeModule } from '@fortawesome/angular-fontawesome';

import { CommonModule } from '@angular/common';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

import { ToastrModule } from 'ngx-toastr';
import { FileUploadModule } from 'ng2-file-upload';

import {NgxPrintModule} from 'ngx-print';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { LoginComponent } from './login/login.component';
import { HomeComponent } from './home/home.component';

import { AuthInterceptor } from "./auth/interceptors/auth.interceptor";
import { JwtHelperService } from '@auth0/angular-jwt';
import { HomeLayoutComponent } from './layouts/home-layout/home-layout.component';
import { LoginLayoutComponent } from './layouts/login-layout/login-layout.component';
import { NavbarComponent } from './navbar/navbar.component';
import { BusinessCreateComponent } from './business/business-create/business-create.component';

import { OperationsComponent } from './business/operations/operations.component';
import { NgProgressModule } from '@ngx-progressbar/core';
import { NgProgressRouterModule } from '@ngx-progressbar/router';
import { ResolveStart, ResolveEnd } from '@angular/router';
import { FieldInputComponent } from './business/comm/field-input/field-input.component';
import { NgSelectModule } from '@ng-select/ng-select';
import { CorpSelectComponent } from './business/corp-select/corp-select.component';

import { VaildMessageComponent } from './comm/vaild-message/vaild-message.component';
import { DateTimePickerComponent } from './comm/date-time-picker/date-time-picker.component';
import { ServerErrorInterceptor } from './comm/interceptors/server-error.interceptor';
import { FileUploadComponent } from './business/file-upload/file-upload.component';
import { BusinessCreateListComponent } from './business/business-create-list/business-create-list.component';
import { ThumbnailDirective } from './comm/thumbnail.directive';
import { DragulaModule } from 'ng2-dragula';
import { NgxLoadingModule, ngxLoadingAnimationTypes } from 'ngx-loading';
import { ImageViewerModule } from '@hallysonh/ngx-imageviewer';

import { BusinessViewComponent } from './business/business-view/business-view.component';
import { FileGalleryComponent } from './business/file-gallery/file-gallery.component';
import { NgxGalleryModule } from 'ngx-gallery';
import { DetailsComponent } from './business/details/details.component';
import { BusinessEditComponent } from './business/business-edit/business-edit.component';
import { BusinessSearchComponent } from './business/business-search/business-search.component';
import { OcticonDirective } from './comm/octicon.directive';
import { FunctionLayoutComponent } from './layouts/function-layout/function-layout.component';
import { VolumeComponent } from './business/volume/volume.component';

import { library as fontLibrary } from '@fortawesome/fontawesome-svg-core';
import { far ,faCalendar,  faClock } from '@fortawesome/free-regular-svg-icons';
import { fas, faCamera, faAngleUp, faAngleDown, faArrowCircleRight } from '@fortawesome/free-solid-svg-icons';
fontLibrary.add(
  fas,
  far,
  faCalendar,
  faClock,
  faCamera,
  faAngleUp,
  faAngleDown,
  faArrowCircleRight
);

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    HomeComponent,
    HomeLayoutComponent,
    LoginLayoutComponent,
    NavbarComponent,
    BusinessCreateComponent,
    FieldInputComponent,
    OperationsComponent,
    VolumeComponent,
    CorpSelectComponent,
    VaildMessageComponent,
    DateTimePickerComponent,
    FileUploadComponent,
    BusinessCreateListComponent,
    ThumbnailDirective,
    BusinessViewComponent,
    FileGalleryComponent,
    DetailsComponent,
    BusinessEditComponent,
    BusinessSearchComponent,
    OcticonDirective,
    FunctionLayoutComponent
  ],
  imports: [
    FileUploadModule,
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    ReactiveFormsModule,
    NgSelectModule,
    HttpClientModule,
    NgbModule,
    FontAwesomeModule,
    CommonModule,
    BrowserAnimationsModule,
    ImageViewerModule,
    NgxGalleryModule,
    // UiSwitchModule,
    NgxPrintModule,
    ToastrModule.forRoot(),
    DragulaModule.forRoot(),
    NgxLoadingModule.forRoot({
      animationType: ngxLoadingAnimationTypes.circleSwish,
      backdropBackgroundColour: 'rgba(0,0,0,0.1)', 
      backdropBorderRadius: '3px',
      primaryColour: '#ffffff', 
      secondaryColour: '#ffffff', 
      tertiaryColour: '#ffffff',
      fullScreenBackdrop: true
    }),
    NgProgressModule.withConfig(
      {
        spinner: false
      }
    ),
    NgProgressRouterModule.withConfig(
      {
        startEvents: [ResolveStart],
        completeEvents: [ResolveEnd],
      }
    )
  ],
  providers: [Title,
    { provide: HTTP_INTERCEPTORS, useClass: AuthInterceptor, multi: true },
    {provide: HTTP_INTERCEPTORS, useClass: ServerErrorInterceptor, multi: true},
    JwtHelperService],
  bootstrap: [AppComponent]
})
export class AppModule { }
