import { Injectable } from "@angular/core";
import { Resolve, RouterStateSnapshot,
    ActivatedRouteSnapshot } from '@angular/router';
import { Observable } from 'rxjs';
import { BusinessService } from '../services/business.service';
import { FormGroup } from '@angular/forms';

@Injectable({
    providedIn: 'root'
  })
export class UsedDefineResolver implements Resolve<any>{

    constructor(private businessService: BusinessService){}

    resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot) {
        return this.businessService.listUsedDefine();
    }



}