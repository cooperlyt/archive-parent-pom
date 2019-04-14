import { Component, OnInit } from '@angular/core';
import { AuthenticationService } from '../authentication.service';
import {Router} from '@angular/router';
import { catchError } from 'rxjs/operators';
import { throwError, EMPTY } from 'rxjs';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit {
  
  loginData = {username: "", password: ""};

  fail = false;

  constructor(private _service: AuthenticationService,private _router:Router) { }

  ngOnInit() {
    this.fail = false;
  }


  login(){
    
    this._service.obtainAccessToken(this.loginData).pipe(
        catchError(err => {
          this.fail = true;
          return EMPTY;
        })
    ).subscribe(_=>this._router.navigate(['']));
  }

}
