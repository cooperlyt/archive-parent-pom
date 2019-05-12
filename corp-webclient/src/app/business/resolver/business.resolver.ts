import { Injectable } from "@angular/core";
import { Resolve, RouterStateSnapshot,
    ActivatedRouteSnapshot } from '@angular/router';
import { Observable } from 'rxjs';
import { BusinessService } from '../services/business.service';
import { Business } from '../model/business.model';

@Injectable({
    providedIn: 'root'
  })
export class BusinessResolver implements Resolve<Business>{

    constructor(private _businessService: BusinessService) {
    }

    resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Business | Observable<Business> | Promise<Business> {
        let id = route.params["id"];
        if (! id){
            const parentActivatedRoute = route.parent;

            id = parentActivatedRoute.params["id"];
        }
        console.log("get business by id", id)
        return this._businessService.getBusiness(id);
    }

}