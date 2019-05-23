import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Cell } from '../model/cell.model';
import { CellBoxService } from './cell-box.service';

@Component({
  selector: 'app-cell',
  templateUrl: './cell.component.html',
  styleUrls: ['./cell.component.scss'],
  providers: [CellBoxService]
})
export class CellComponent implements OnInit {

  cells: Cell[][];

  constructor(private route: ActivatedRoute, private cellBoxService: CellBoxService) { 
    this.cellBoxService.onBoxChange$.subscribe(cell => {
      for(let i of this.cells){
        for (let j of i){
          if (j.id === cell.id){
            j.percentage = cell.percentage;
            return;
          }
        }
      }
    })
  }

  ngOnInit() {
    this.route.data.subscribe(data => this.cells = data.cells)
  }

}
