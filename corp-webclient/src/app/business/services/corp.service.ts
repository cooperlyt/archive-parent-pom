import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { Observable } from 'rxjs';
import { environment } from '../../../environments/environment';
import { CorpSummary } from '../model/corp-summary.model';

@Injectable({
  providedIn: 'root'
})
export class CorpService {

  constructor(private _http: HttpClient) { }

  getCorpByType(type:string):Observable<CorpSummary[]>{
    return this._http.get<CorpSummary[]>(`${environment.apiUrl}/corp/v1/corp/summary/${type}`);
  }

}
