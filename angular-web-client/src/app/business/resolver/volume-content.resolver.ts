import { Injectable } from "@angular/core";
import { Resolve, RouterStateSnapshot,
    ActivatedRouteSnapshot } from '@angular/router';
import { Observable } from 'rxjs';
import { BusinessService } from '../services/business.service';
import { Business } from '../model/business.model';
import { VolumeContext } from '../model/volume-context.model';

@Injectable({
    providedIn: 'root'
  })
export class VolumeContentResolver implements Resolve<VolumeContext[]>{

    constructor(private _businessService: BusinessService) {
    }

    resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): VolumeContext[] | Observable<VolumeContext[]> | Promise<VolumeContext[]> {
        
        let id = route.params["id"];
        if (! id){
            const parentActivatedRoute = route.parent;

            id = parentActivatedRoute.params["id"];
        }
        return this._businessService.getVolumeContext(id);
    }


}