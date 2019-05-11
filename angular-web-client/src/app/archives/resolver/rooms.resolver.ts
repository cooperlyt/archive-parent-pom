import { Injectable } from "@angular/core";
import { Resolve, RouterStateSnapshot,
    ActivatedRouteSnapshot } from '@angular/router';
import { Observable } from 'rxjs';
import { Room } from '../model/room.model';
import { ArchiveService } from '../services/archive.service';


@Injectable({
    providedIn: 'root'
  })
export class RoomsResolver implements Resolve<Room[]>{

    constructor(private roomService:ArchiveService){}

    resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Room[] | Observable<Room[]> | Promise<Room[]> {
        return this.roomService.listRoom();
    }

}