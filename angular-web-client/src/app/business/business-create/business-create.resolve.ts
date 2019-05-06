import { Injectable } from "@angular/core";
import { Resolve, RouterStateSnapshot,
    ActivatedRouteSnapshot } from '@angular/router';
import { Observable } from 'rxjs';
import { BusinessService } from '../services/business.service';
import { FormGroup } from '@angular/forms';

@Injectable({
    providedIn: 'root'
  })
export class BusinessCreateResolver implements Resolve<FormGroup>{


    constructor(private _businessService: BusinessService) {
    }

    resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<FormGroup> | Promise<FormGroup> | FormGroup{
        const id = route.params["id"];
        return this._businessService.createNewBusiness(id);
    }

}