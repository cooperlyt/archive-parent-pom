import { Component, OnInit, Input } from '@angular/core';
import { ValidationErrors, FormControl } from '@angular/forms';
import { style } from '@angular/animations';

@Component({
  selector: 'app-vaild-message',
  templateUrl: './vaild-message.component.html',
  styleUrls: ['./vaild-message.component.scss']
})
export class VaildMessageComponent implements OnInit {

  @Input() control:FormControl;
  @Input() alert: boolean;
  @Input() note: string;

  get errors():ValidationErrors | null{
    return this.control.errors;
  }

  get styleClass():string{
    if (this.alert){
      return 'alert alert-danger';
    }else{
      return 'note error-msg';
    }
  }

  constructor() { }

  ngOnInit() {
  }


}