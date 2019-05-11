import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Rack } from '../model/rack.model';
import { Cabinet } from '../model/cabinet.model';
import { ArchiveService } from '../services/archive.service';

@Component({
  selector: 'app-cabinet',
  templateUrl: './cabinet.component.html',
  styleUrls: ['./cabinet.component.scss']
})
export class CabinetComponent implements OnInit {

  racks: Rack[];

  cabinets: Cabinet[];

  loadding: boolean = false;

  selectRackId: string;

  get hasRack():boolean{
    return this.racks.length > 0;
  }

  get hasCabinet():boolean{
    return this.cabinets.length > 0;
  }


  rackSelected(){
    this.loadding = true;
    this.service.listCabinet(this.selectRackId).subscribe(cabinets => {
      this.cabinets = cabinets;
      this.loadding = false;
    });
  }

  constructor(private route: ActivatedRoute, private service: ArchiveService) { }

  ngOnInit() {
    this.route.data.subscribe(data => {
      this.racks = data.racks;
      if (this.racks.length > 0){
        this.selectRackId = this.racks[0].id;
        this.rackSelected();
      }else{
        this.selectRackId = null;
        this.cabinets = [];
      }
    });
  }

}
