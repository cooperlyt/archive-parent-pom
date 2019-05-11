import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Cell } from '../model/cell.model';

@Component({
  selector: 'app-cell',
  templateUrl: './cell.component.html',
  styleUrls: ['./cell.component.scss']
})
export class CellComponent implements OnInit {

  cells: Cell[][];

  constructor(private route: ActivatedRoute) { }

  ngOnInit() {
    this.route.data.subscribe(data => this.cells = data.cells)
  }

}
