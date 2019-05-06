import { Component, OnInit, Input } from '@angular/core';
import { ValidationErrors, FormControl } from '@angular/forms';

@Component({
  selector: 'app-vaild-message',
  templateUrl: './vaild-message.component.html',
  styleUrls: ['./vaild-message.component.scss']
})
export class VaildMessageComponent implements OnInit {

  @Input() errors:any;

  constructor() { }

  ngOnInit() {
  }


}

// export function FormatString(str: string, ...val: string[]) {
//   for (let index = 0; index < val.length; index++) {
//     str = str.replace(`{${index}}`, val[index]);
//   }
//   return str;
// }
