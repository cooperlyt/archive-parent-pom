import { Injectable } from "@angular/core";
import { Resolve, RouterStateSnapshot,
    ActivatedRouteSnapshot } from '@angular/router';
import { Observable } from 'rxjs';
import { BusinessService } from '../services/business.service';
import { FormGroup } from '@angular/forms';

@Injectable({
    providedIn: 'root'
  })
export class BusinessSearchResolver implements Resolve<any>{

    constructor(private businessService: BusinessService){}
    resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot) {
        const page = route.queryParams["page"];
        const key = route.queryParams['key'];
        const define = route.queryParams['define'];
        const status = route.queryParams['status'];
        const begin = route.queryParams['begin'];
        const end = route.queryParams['end'];
        console.log("search business page:", page, 'key:', key);

        return this.businessService.search(page,key,define,status,begin,end);
      
    }

}