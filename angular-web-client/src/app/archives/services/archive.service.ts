import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from '../../../environments/environment';
import { Room } from '../model/room.model';
import { Rack } from '../model/rack.model';
import { Cabinet } from '../model/cabinet.model';
import { Cell } from '../model/cell.model';
import { Box } from '../model/box.model';
import { RoomPath } from '../model/room-path.model';
import { RackPath } from '../model/rack-path.model';
import { CabinetPath } from '../model/cabinet-path.model';
import { CellPath } from '../model/cell-path.model';
import { map } from 'rxjs/operators';
import { Business } from '../../business/model/business.model';


@Injectable({
    providedIn: 'root'
  })
export class ArchiveService {

    constructor(private _http: HttpClient) { }

    listRoom():Observable<Room[]>{
        return this._http.get<Room[]>(`${environment.apiUrl}/rooms/v1/list-room`);
    }

    listRack(id:string):Observable<Rack[]>{
        console.log('list rack by :' , id);
        return this._http.get<Rack[]>(`${environment.apiUrl}/rooms/v1/list-rack/${id}`);
    }

    listCabinet(id:string):Observable<Cabinet[]>{
        return this._http.get<Cabinet[]>(`${environment.apiUrl}/rooms/v1/list-cabinet/${id}`);
    }

    listCell(id:string):Observable<Cell[][]>{
        return this._http.get<Cell[][]>(`${environment.apiUrl}/rooms/v1/list-cell/${id}`);
    }

    listBox(id:string):Observable<Box[]>{
        return this._http.get<Box[]>(`${environment.apiUrl}/rooms/v1/list-box/${id}`);
    }

    getCell(id:string):Observable<Cell>{
        return this._http.get<Cell>(`${environment.apiUrl}/rooms/v1/cell/${id}`).pipe(
            map(data => new Cell(data))
        );
    }
    

    getRoomPath(id:string):Observable<RoomPath>{
        return this._http.get<RoomPath>(`${environment.apiUrl}/rooms/v1/path/room/${id}`);
    }

    getRoomPathByRack(id:string):Observable<RoomPath>{
        return this._http.get<RoomPath>(`${environment.apiUrl}/rooms/v1/path/room-rack/${id}`);
    }

    getRackPath(id:string):Observable<RackPath>{
        return this._http.get<RackPath>(`${environment.apiUrl}/rooms/v1/path/rack/${id}`);
    }

    getCabinetPath(id:string):Observable<CabinetPath>{
        return this._http.get<CabinetPath>(`${environment.apiUrl}/rooms/v1/path/cabinet/${id}`);
    }

    getCellPath(id:string):Observable<CellPath>{
        return this._http.get<CellPath>(`${environment.apiUrl}/rooms/v1/path/cell/${id}`);
    }

    addBox(cellId:string ,box:Box):Observable<string>{
        return this._http.put<any>(`${environment.apiUrl}/rooms/v1/editor/new/${cellId}`,box).pipe(
            map(data => data.id)
        )
    }

    setBoxFull(boxId:string):Observable<Box>{
        return this._http.get<Box>(`${environment.apiUrl}/rooms/v1/editor/full/${boxId}`);
    }

    setBoxNotFull(boxId:string):Observable<Box>{
        return this._http.get<Box>(`${environment.apiUrl}/rooms/v1/editor/not-full/${boxId}`);
    }

    listBoxBusiness(boxId:string):Observable<Business[]>{
        return this._http.get<Business[]>(`${environment.apiUrl}/business/v1/archive/business/${boxId}`);
    }

}