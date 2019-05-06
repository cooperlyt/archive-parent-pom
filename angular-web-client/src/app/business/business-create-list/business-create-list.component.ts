import { Component, OnInit } from '@angular/core';
import { BusinessService } from '../services/business.service';
import { faBook } from '@fortawesome/free-solid-svg-icons';

@Component({
  selector: 'app-business-create-list',
  templateUrl: './business-create-list.component.html',
  styleUrls: ['./business-create-list.component.scss']
})
export class BusinessCreateListComponent implements OnInit {

  faBook = faBook;
  
  defines: any;
  constructor(private _businessSvr: BusinessService) { }

  ngOnInit() {
    this._businessSvr.listDefineSummary().subscribe(data => this.defines = data);
  }

}
