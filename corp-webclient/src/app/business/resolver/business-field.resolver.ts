import { Injectable } from "@angular/core";
import { Resolve, RouterStateSnapshot,
    ActivatedRouteSnapshot } from '@angular/router';
import { Observable } from 'rxjs';
import { BusinessService } from '../services/business.service';
import { Business } from '../model/business.model';
import { ValueGroup } from '../model/value-group.model';

@Injectable({
    providedIn: 'root'
  })
export class BusinessFieldResolver implements Resolve<ValueGroup[]>{

    constructor(private _businessService: BusinessService) {
    }

    resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): ValueGroup[] | Observable<ValueGroup[]> | Promise<ValueGroup[]> {
        let id = route.params["id"];
        if (! id){
            const parentActivatedRoute = route.parent;

            id = parentActivatedRoute.params["id"];
        }
        return this._businessService.getBusinessFields(id);
    }


}