import { Component, OnInit } from '@angular/core';
import { AuthenticationService } from '../auth/authentication.service';

import { faUser } from '@fortawesome/free-solid-svg-icons';
import { BusinessService } from '../business/services/business.service';
import { BusinessStatus, OperationType } from '../business/enumData';


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {

  faUser = faUser;


  user: any;

  businessStatus = BusinessStatus;
  operationType = OperationType;

  constructor(private _service: AuthenticationService,private _businessService: BusinessService) { }

  ngOnInit() {
    
      this._service.getUserInfo().subscribe(data => this.user = data);

  }



}
