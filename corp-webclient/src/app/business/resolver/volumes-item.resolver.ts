import { Injectable } from "@angular/core";
import { Resolve, RouterStateSnapshot,
    ActivatedRouteSnapshot } from '@angular/router';
import { Observable } from 'rxjs';
import { BusinessService } from '../services/business.service';
import { Business } from '../model/business.model';
import { VolumeContext } from '../model/volume-context.model';
import { VolumeItem } from '../model/volume-item.model';
import { map } from 'rxjs/operators';

@Injectable({
    providedIn: 'root'
  })
export class VolumesItemResolver implements Resolve<VolumeItem[]>{

    constructor(private _businessService: BusinessService) {
    }

    resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): VolumeItem[] | Observable<VolumeItem[]> | Promise<VolumeItem[]> {

        let id = route.params["id"];
        if (! id){
            const parentActivatedRoute = route.parent;

            id = parentActivatedRoute.params["id"];
        }
        return this._businessService.listVolumeItem(id).pipe(

           map(data => {let i = 1; return data.map<VolumeItem>(item => {
                let j = 1;
                item.contexts = item.contexts.map<VolumeContext>(context => {
                        let result = new VolumeContext(context);
                        if (context.pageCount > 1){
                            result.title = `第${i}-${i + context.pageCount - 1}页`
                        }else {
                            result.title = `第${i}页`
                        }
                        
                        i += context.pageCount;
                        result.description = `${item.name} - ${result.title}`
                        return result;
                    })
                return item;
                })
            })
        );
    }

}