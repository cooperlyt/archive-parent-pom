import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Business } from '../model/business.model';
import { ValueGroup } from '../model/value-group.model';
import { CORP_TYPE, BusinessStatus, SecrecyLevel } from '../enumData';
import { number } from 'prop-types';
import { FieldValue } from '../model/field-value.model';
import { ArchiveService } from '../../archives/services/archive.service';

export class RowFields {

  constructor(  public type:string,
    public valueGroup: ValueGroup[],
    public rowIndex: number) {
    
  }

  get singleValue():ValueGroup{
    return this.valueGroup[0];
  }


  get fields():FieldValue[]{
    let result:FieldValue[] = [];
    this.valueGroup.forEach(data => result = result.concat(data.fieldDefines));
    return result;
  }
}

@Component({
  selector: 'app-details',
  templateUrl: './details.component.html',
  styleUrls: ['./details.component.scss']
})
export class DetailsComponent implements OnInit {
  secrecyLevel = SecrecyLevel;
  corpType = CORP_TYPE;
  businessStatus = BusinessStatus;

  business: Business;
  businessNamePath: string[];

  navigateToBox(boxId:string){
    console.log(boxId.split("-")) ;
    const path = boxId.split("-");

    this._router.navigate(["/rooms",path[0],`${path[0]}-${path[1]}-${path[2]}`, `${path[0]}-${path[1]}-${path[2]}-${path[3]}-${path[4]}` ]);
  }

  fields: RowFields[] = [];

  constructor(private _route: ActivatedRoute,private _router: Router, private archiveService: ArchiveService) { }

  ngOnInit() {

    this._route.data.subscribe((data: {business: Business, fields: ValueGroup[]}) => {
      this.business = data.business;
      this.archiveService.getPathName(this.business.volume.boxId).subscribe(data => this.businessNamePath = data);
      let fieldSimple : {[key:number] : ValueGroup[]} = {};

      data.fields.forEach(item =>{
       
        let f = fieldSimple[item.row];
        if (item.type === 'SIMPLE' || f){
          if (f){
            console.log("push SIMPLE item:", item.name);
            f.push(item);
          }else{
            fieldSimple[item.row] = [item];
          }
        }else{
          console.log("push " + item.type + " item:", item.name);
          this.fields.push(new RowFields(item.type,[item],item.row));
        }
      });

      Object.entries(fieldSimple).forEach(
        ([key, value]) => {
          this.fields.push(new RowFields('SIMPLE',fieldSimple[key], +key))
        }
      );

      this.fields = this.fields.sort((a,b) => {
        return a.rowIndex == b.rowIndex ? 0 :(a.rowIndex < b.rowIndex ? -1 : 1);
      })
      

    });
  }

}
