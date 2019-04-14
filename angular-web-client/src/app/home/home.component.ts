import { Component, OnInit } from '@angular/core';
import { AuthenticationService } from '../authentication.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {

  user: string;

  constructor(private _service: AuthenticationService, private _router: Router) { }

  ngOnInit() {
      this._service.getUserInfo().subscribe(data => this.user = data.user);
  }

  logout() {
    this.user = null;
    this._service.logout();
    this._router.navigate(['/login'])
  }


}
