import { Injectable } from "@angular/core";
import { Resolve, RouterStateSnapshot,
    ActivatedRouteSnapshot } from '@angular/router';
import { Observable } from 'rxjs';
import { BusinessService } from '../../services/business.service';
import { BusinessDefine } from '../../model/business-define.model';

@Injectable({
    providedIn: 'root'
  })
export class BusinessDefineResolver implements Resolve<BusinessDefine>{

    constructor(private _businessService: BusinessService) {
    }

    resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<any> | Promise<any> | any{
        const id = route.params["id"];
        return this._businessService.getBusinessDefine(id);
    }

}