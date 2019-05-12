import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Operation } from '../model/operation.model';
import { OperationType } from '../enumData';

@Component({
  selector: 'app-operations',
  templateUrl: './operations.component.html',
  styleUrls: ['./operations.component.scss']
})
export class OperationsComponent implements OnInit {

  constructor(private _route: ActivatedRoute) { }

  operations: Operation[];

  operationType = OperationType;

  ngOnInit() {
    this._route.data.subscribe(data => this.operations = data.operations);
  }

}
