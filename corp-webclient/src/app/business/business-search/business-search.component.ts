import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router, Params } from '@angular/router';

@Component({
  selector: 'app-business-search',
  templateUrl: './business-search.component.html',
  styleUrls: ['./business-search.component.scss']
})
export class BusinessSearchComponent implements OnInit {

  constructor(private _route: ActivatedRoute,private _router: Router) { }

  searchKey:string;
  defineId:string;

  page: any;
  pageIndex: number;
  usedDefine: any[];

  filterByDefine(id?: string){
    console.log("filter:" ,id);
    if (!id && !this.defineId){
      return;
    }
    console.log("filter:" ,this.defineId);
    if (id !== this.defineId){
      let params: Params = {page: 0 , define: id};
      if (this.searchKey){
        params['key'] = this.searchKey;
      }
      this._router.navigate(['/business-search'], { queryParams: params});
    }
  }

  onPageChange(page: number){
    console.log("chang page:" , page);
    if (page !== this.pageIndex){
      let params: Params = {page: page -1};
      if (this.searchKey){
        params['key'] = this.searchKey;
      }
      if (this.defineId){
        params['define'] = this.defineId;
      }
      this._router.navigate(['/business-search'], { queryParams: params});
    }
  }


  ngOnInit() {
    this._route.data.subscribe(data =>{
      this.page = data.page;
      this.pageIndex = this.page.number + 1;
      this.usedDefine = data.defines;
    });
    this._route.queryParams.subscribe(params =>{
      if (params.hasOwnProperty('key')){
        this.searchKey = params['key'];
      }else{
        this.searchKey = null;
      }
      if (params.hasOwnProperty('define')){
        this.defineId = params['define'];
      }else{
        this.defineId = null;
      }
    });
  }

}
