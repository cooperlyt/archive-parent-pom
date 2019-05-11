import { Injectable } from "@angular/core";
import { Resolve, RouterStateSnapshot,
    ActivatedRouteSnapshot } from '@angular/router';
import { Observable } from 'rxjs';
import { ArchiveService } from '../services/archive.service';
import { Box } from '../model/box.model';


@Injectable({
    providedIn: 'root'
  })
export class BoxsResolver implements Resolve<Box[]>{

    constructor(private service: ArchiveService){}

    resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Box[] | Observable<Box[]> | Promise<Box[]> {
        const id = route.params['id'];
        return this.service.listBox(id);
    }


}