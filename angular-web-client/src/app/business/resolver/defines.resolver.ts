import { Injectable } from "@angular/core";
import { Resolve, RouterStateSnapshot,
    ActivatedRouteSnapshot } from '@angular/router';
import { Observable } from 'rxjs';
import { BusinessService } from '../services/business.service';
import { Business } from '../model/business.model';
import { BusinessCategory } from '../model/business-category.model';
import { DefineSummary } from '../model/define-summary.model';

@Injectable({
    providedIn: 'root'
  })
export class DefinesResolver implements Resolve<DefineSummary[]>{

    constructor(private businessServer: BusinessService){}

    resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): DefineSummary[] | Observable<DefineSummary[]> | Promise<DefineSummary[]> {
        let id = route.params["id"];

        return this.businessServer.listDefineByCategory(id);
    }


}