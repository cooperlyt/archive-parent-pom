import { Injectable } from "@angular/core";
import { Resolve, RouterStateSnapshot,
    ActivatedRouteSnapshot } from '@angular/router';
import { Observable } from 'rxjs';
import { ArchiveService } from '../services/archive.service';
import { Rack } from '../model/rack.model';
import { Cell } from '../model/cell.model';


@Injectable({
    providedIn: 'root'
  })
export class CellsResolver implements Resolve<Cell[][]>{

    constructor(private service: ArchiveService){}

    resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Cell[][] | Observable<Cell[][]> | Promise<Cell[][]> {
        const id = route.params['id'];
        return this.service.listCell(id);
    }

}