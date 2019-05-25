import { Component, OnInit } from '@angular/core';
import { DefineSummary } from '../model/define-summary.model';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-template-list',
  templateUrl: './template-list.component.html',
  styleUrls: ['./template-list.component.scss']
})
export class TemplateListComponent implements OnInit {

  defines: DefineSummary[];

  constructor(private route: ActivatedRoute,
      private router: Router) { }

  ngOnInit() {
    this.route.data.subscribe(data => this.defines = data.defines);
  }

  doAction(defineId:string){
    switch(this.route.snapshot.queryParams.fun){
      case 'patch' :{
        this.router.navigate(["/business-patch",
          this.route.snapshot.queryParams.box,
          defineId]);
        break;
      }
      case 'new' :{
        this.router.navigate(["/business-create",defineId]);
        break;
      }
      default: {
        console.log('func no define');
        break;
      }
    }
  }

}
