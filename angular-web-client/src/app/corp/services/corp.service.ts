import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from '../../../environments/environment';
import { Corp } from '../model/corp.model';
import { CorpSummary } from '../model/corp-summary.model';


@Injectable({
  providedIn: 'root'
})
export class CorpService {

  constructor(private _http: HttpClient) { }

  getCorpByType(type:string):Observable<CorpSummary[]>{
    return this._http.get<CorpSummary[]>(`${environment.apiUrl}/corp/v1/corp/summary/${type}`);
  }

  listValidCorp(type?:string): Observable<Corp[]>{
    if (type){
      return this._http.get<Corp[]>(`${environment.apiUrl}/corp/v1/corp/list/${type}`);
    }else{
      return this._http.get<Corp[]>(`${environment.apiUrl}/corp/v1/corp/list`); 
    }
    
  }

  saveCorp(corp: Corp):Observable<Corp>{
    return this._http.put<Corp>(`${environment.apiUrl}/corp/v1/corp/save`,corp);
  }

}
