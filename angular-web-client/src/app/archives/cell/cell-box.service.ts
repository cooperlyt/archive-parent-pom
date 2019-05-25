import { Injectable } from '@angular/core';
import { Subject } from 'rxjs';
import { Cell } from '../model/cell.model';
import { Box } from '../model/box.model';
import { ArchiveService } from '../services/archive.service';

@Injectable()
export class CellBoxService{
    

    private boxChangeSource = new Subject<Cell>();
    onBoxChange$ = this.boxChangeSource.asObservable();

    constructor(private archiveService: ArchiveService){
        
    }

    boxChanged(boxId:string){
        this.archiveService.getCellByBox(boxId).subscribe(cell => this.boxChangeSource.next(cell)); 
    }
}