import { Component, OnInit } from '@angular/core';
import { AuthenticationService } from '../authentication.service';
import { DefineService } from '../services/business.service';

import { faBook } from '@fortawesome/free-solid-svg-icons';
import { faUser } from '@fortawesome/free-solid-svg-icons';


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {

  faUser = faUser;
  faBook = faBook;

  user: any;
  defines: any;

  constructor(private _service: AuthenticationService, private _businessSvr: DefineService) { }

  ngOnInit() {
      this._service.getUserInfo().subscribe(data => this.user = data);
      this._businessSvr.listDefineSummary().subscribe(data => this.defines = data);
  }



}
