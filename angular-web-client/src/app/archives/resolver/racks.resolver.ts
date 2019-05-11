import { Injectable } from "@angular/core";
import { Resolve, RouterStateSnapshot,
    ActivatedRouteSnapshot } from '@angular/router';
import { Observable } from 'rxjs';
import { ArchiveService } from '../services/archive.service';
import { Rack } from '../model/rack.model';


@Injectable({
    providedIn: 'root'
  })
export class RacksResolver implements Resolve<Rack[]>{

    resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Rack[] | Observable<Rack[]> | Promise<Rack[]> {
        const id = route.params["id"];
        return this.service.listRack(id);
    }

    constructor(private service: ArchiveService){}


}