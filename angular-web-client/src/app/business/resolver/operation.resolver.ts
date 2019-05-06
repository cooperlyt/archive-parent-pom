import { Injectable } from "@angular/core";
import { Resolve, RouterStateSnapshot,
    ActivatedRouteSnapshot } from '@angular/router';
import { Observable } from 'rxjs';
import { BusinessService } from '../services/business.service';
import { Operation } from '../model/operation.model';

@Injectable({
    providedIn: 'root'
  })
export class OperationResolver implements Resolve<Operation[]>{

    constructor(private businessServer: BusinessService){}

    resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Operation[] | Observable<Operation[]> | Promise<Operation[]> {
       
        let id = route.params["id"];
        if (! id){
            const parentActivatedRoute = route.parent;

            id = parentActivatedRoute.params["id"];
        }
        return this.businessServer.listOperation(id);
    }


}
