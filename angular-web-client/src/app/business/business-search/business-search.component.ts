import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router, Params } from '@angular/router';
import { BusinessStatus } from '../enumData';

@Component({
  selector: 'app-business-search',
  templateUrl: './business-search.component.html',
  styleUrls: ['./business-search.component.scss']
})
export class BusinessSearchComponent implements OnInit {

  

  businessStatuses = Object.keys(BusinessStatus).filter(key => key !== 'PREPARE' && key !== 'REJECT').map(data => ({key : data , title : BusinessStatus[data]}));

  businessStatus = BusinessStatus;

  constructor(private _route: ActivatedRoute,private _router: Router) { }

  searchKey:string;
  defineId:string;
  searchStatus:string;
  beginDate: string;
  endDate:string;


  page: any;
  pageIndex: number;
  usedDefine: any[];

  navigateToBox(boxId:string){
    console.log(boxId.split("-")) ;
    const path = boxId.split("-");

    this._router.navigate(["/rooms",path[0],`${path[0]}-${path[1]}-${path[2]}`, `${path[0]}-${path[1]}-${path[2]}-${path[3]}-${path[4]}` ]);
  }

  private genParams(page :number):Params{
    let result: Params = {page: page};
    if (this.searchKey){
      result['key'] = this.searchKey;
    }
    if (this.searchStatus){
      result['status'] = this.searchStatus;
    }
    if (this.beginDate){
      result['begin'] = this.beginDate;
    }
    if (this.endDate){
      result['end'] = this.endDate;
    }
    if (this.defineId){
      result['define'] = this.defineId;
    }

    return result;
  }

  filterBegin(date?:string){
  
      let params = this.genParams(0);
      params['begin']= date;
      this._router.navigate(['/business-search'], { queryParams: params});
    
  }

  filterEnd(date?: string){

      let params = this.genParams(0);
      params['end']= date;
      this._router.navigate(['/business-search'], { queryParams: params});
    
  }

  filterStatus(status?:string){
    if (!status && !this.searchStatus){
      return;
    }
    if (status !== this.searchStatus){
      let params: Params =  this.genParams(0);
      params['status'] = status;
      this._router.navigate(['/business-search'], { queryParams: params});
    }
  }

  filterByDefine(id?: string){
    console.log("filter:" ,id);
    if (!id && !this.defineId){
      return;
    }
    console.log("filter:" ,this.defineId);
    if (id !== this.defineId){
      let params: Params =  this.genParams(0);
      params['define'] = id;
      this._router.navigate(['/business-search'], { queryParams: params});
    }
  }

  onPageChange(page: number){
    console.log("chang page:" , page);
    if (page !== this.pageIndex){
      let params: Params = this.genParams(page - 1);
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
      if (params.hasOwnProperty('status')){
        this.searchStatus = params['status'];
      }else{
        this.searchStatus = null;
      }
      if (params.hasOwnProperty('begin')){
        this.beginDate = params['begin'];
      }else{
        this.beginDate = null;
      }
      if (params.hasOwnProperty('end')){
        this.endDate = params['end'];
      }else{
        this.endDate = null;
      }
    });
  }

}
