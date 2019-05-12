import { Injectable } from "@angular/core";
import { Resolve, RouterStateSnapshot,
    ActivatedRouteSnapshot } from '@angular/router';
import { Observable } from 'rxjs';
import { BusinessService } from '../services/business.service';
import { FormGroup, FormArray } from '@angular/forms';

@Injectable({
    providedIn: 'root'
  })
export class BusinessFieldEditorResolver implements Resolve<FormArray>{


    constructor(private _businessService: BusinessService) {
    }

    resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<FormArray> | Promise<FormArray> | FormArray{
        const id = route.params["id"];
        return this._businessService.editorFields(id);
    }

}