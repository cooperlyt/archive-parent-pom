import { Component, OnInit } from '@angular/core';
import { AuthenticationService } from '../authentication.service';
import { faUser } from '@fortawesome/free-solid-svg-icons';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {

  faUser = faUser;

  user: string;

  constructor(private _service: AuthenticationService) { }

  ngOnInit() {
      this._service.getUserInfo().subscribe(data => this.user = data.user);
  }



}
