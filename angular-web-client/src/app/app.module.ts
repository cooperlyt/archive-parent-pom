import { BrowserModule, Title } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule, HTTP_INTERCEPTORS }    from '@angular/common/http';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

import { FontAwesomeModule } from '@fortawesome/angular-fontawesome';
import { library as fontLibrary } from '@fortawesome/fontawesome-svg-core';
import { faCalendar,  faClock } from '@fortawesome/free-regular-svg-icons';

import { CommonModule } from '@angular/common';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

import { ToastrModule } from 'ngx-toastr';

import { FileSelectDirective, FileDropDirective } from 'ng2-file-upload';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { LoginComponent } from './login/login.component';
import { HomeComponent } from './home/home.component';

import { AuthInterceptor } from "./auth/interceptors/auth.interceptor";
import { JwtHelperService } from '@auth0/angular-jwt';
import { HomeLayoutComponent } from './layouts/home-layout/home-layout.component';
import { LoginLayoutComponent } from './layouts/login-layout/login-layout.component';
import { NavbarComponent } from './navbar/navbar.component';
import { BusinessCreateComponent } from './business/business-create/business-create.component';
import { NgProgressModule } from '@ngx-progressbar/core';
import { NgProgressRouterModule } from '@ngx-progressbar/router';
import { ResolveStart, ResolveEnd } from '@angular/router';
import { FieldInputComponent } from './business/comm/field-input/field-input.component';
import { NgSelectModule } from '@ng-select/ng-select';
import { CorpSelectComponent } from './business/corp-select/corp-select.component';
import { PersonInputComponent } from './business/comm/person-input/person-input.component';
import { VaildMessageComponent } from './comm/vaild-message/vaild-message.component';
import { DateTimePickerComponent } from './comm/date-time-picker/date-time-picker.component';
import { faCamera, faAngleUp, faAngleDown, faArrowCircleRight } from '@fortawesome/free-solid-svg-icons';
import { ServerErrorInterceptor } from './comm/interceptors/server-error.interceptor';
import { FileUploadComponent } from './business/file-upload/file-upload.component';
import { BusinessCreateListComponent } from './business/business-create-list/business-create-list.component';
import { ThumbnailDirective } from './comm/thumbnail.directive';
import { DragulaModule } from 'ng2-dragula';
import { NgxLoadingModule, ngxLoadingAnimationTypes } from 'ngx-loading';
import { ImageViewerModule } from '@hallysonh/ngx-imageviewer';

import { fas } from '@fortawesome/free-solid-svg-icons';
import { far } from '@fortawesome/free-regular-svg-icons';
import { BusinessViewComponent } from './business/business-view/business-view.component';
import { FileGalleryComponent } from './business/file-gallery/file-gallery.component';
import { NgxGalleryModule } from 'ngx-gallery';
import { DetailsComponent } from './business/details/details.component';
import { OperationsComponent } from './business/operations/operations.component';
import { BusinessEditComponent } from './business/business-edit/business-edit.component';
import { BusinessSearchComponent } from './business/business-search/business-search.component';
import { RoomComponent } from './archives/room/room.component';
import { CabinetComponent } from './archives/cabinet/cabinet.component';
import { CellComponent } from './archives/cell/cell.component';
import { BoxComponent } from './archives/box/box.component';
import { RecordComponent } from './business/record/record.component';
import { CompleteComponent } from './business/complete/complete.component';
import { OcticonDirective } from './comm/octicon.directive';


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
    CorpSelectComponent,
    PersonInputComponent,
    VaildMessageComponent,
    DateTimePickerComponent,
    FileUploadComponent,
    FileSelectDirective,
    FileDropDirective,
    BusinessCreateListComponent,
    ThumbnailDirective,
    BusinessViewComponent,
    FileGalleryComponent,
    DetailsComponent,
    OperationsComponent,
    BusinessEditComponent,
    BusinessSearchComponent,
    RoomComponent,
    CabinetComponent,
    CellComponent,
    BoxComponent,
    RecordComponent,
    CompleteComponent,
    OcticonDirective
  ],
  entryComponents: [],
  imports: [
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
    JwtHelperService
    ],
  bootstrap: [AppComponent]
})
export class AppModule { }
