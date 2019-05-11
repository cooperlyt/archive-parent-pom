import { Box } from './box.model';

export class Cell{

    constructor(obj?: any){
        Object.assign(this, obj);
    }

    id:string;
    name:string;
    size:number;
    seq:number;
    row:number;
    col:number;
    percentage:number;
    boxes: Box[];

    get onePercentage(): number{
        return  1 / this.size * 100;
    }

    get emptyBox():number[]{
        let count = this.size;
        let max = 0;
        this.boxes.forEach(item => {
          count = count - item.size;
          if (item.seq > max){
            max = item.seq;
          }
        })
        let result:number[] = [];
        for(let i = 0 ; i<count ; i++){
          max++;
          result.push(max);
        }
        return result;
    }
     
}