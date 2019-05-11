import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Box } from '../model/box.model';
import { Cell } from '../model/cell.model';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-box',
  templateUrl: './box.component.html',
  styleUrls: ['./box.component.scss']
})
export class BoxComponent implements OnInit {

  constructor(private route: ActivatedRoute, private modalService: NgbModal) { }

  // boxs :Box[];
  cell: Cell;

  selectBox: Box;

  openBox(context,box:Box){
    this.selectBox = box;
    this.modalService.open(context);
  }

  // get emptyBox():number[]{
  //   let count = this.cell.size;
  //   let max = 0;
  //   this.boxs.forEach(item => {
  //     count = count - item.size;
  //     if (item.seq > max){
  //       max = item.seq;
  //     }
  //   })
  //   let result:number[] = [];
  //   for(let i = 0 ; i<count ; i++){
  //     max++;
  //     result.push(max);
  //   }
  //   return result;
  // }

  // getPercentageOne():number{
  //   return  1 / this.cell.size * 100
  // }

  ngOnInit() {
    this.route.data.subscribe(data => {
      this.cell = data.cell;
    });
  }

}
