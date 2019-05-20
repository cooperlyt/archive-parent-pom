import { Injectable } from "@angular/core";
import { Resolve, RouterStateSnapshot,
    ActivatedRouteSnapshot } from '@angular/router';
import { Observable } from 'rxjs';
import { BusinessService } from '../services/business.service';
import { Business } from '../model/business.model';
import { BusinessCategory } from '../model/business-category.model';

@Injectable({
    providedIn: 'root'
  })
export class TemplateCategoryResolver implements Resolve<BusinessCategory[]>{

    constructor(private businessServer: BusinessService){}

    resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): BusinessCategory[] | Observable<BusinessCategory[]> | Promise<BusinessCategory[]> {
        return this.businessServer.listBusinessDefineCategory();
    }




}