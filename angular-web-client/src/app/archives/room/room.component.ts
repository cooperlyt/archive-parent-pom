import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router, NavigationEnd } from '@angular/router';
import { Room } from '../model/room.model';
import { inbox } from 'octicons';
import { DomSanitizer } from '@angular/platform-browser';
import { faFile } from '@fortawesome/free-regular-svg-icons';
import { ArchiveService } from '../services/archive.service';

@Component({
  selector: 'app-room',
  templateUrl: './room.component.html',
  styleUrls: ['./room.component.scss']
})
export class RoomComponent implements OnInit {

  faFile = faFile;
  inboxIcon = inbox.toSVG();
  namePath: string[];

  rooms: Room[];

  loadding = false;

  constructor(private route: ActivatedRoute,
    private router: Router,
    private archiveService: ArchiveService,
    private sanitizer: DomSanitizer) { 
      this.router.events.subscribe(event => {
        if (event instanceof NavigationEnd){
          let lastChild = this.route.snapshot;
          while (lastChild.firstChild){
            lastChild = lastChild.firstChild;
          }
          if (lastChild.params["id"]){
            this.archiveService.getPathName(lastChild.params["id"]).subscribe(data => this.namePath = data);
          }
        }
      })
  }

  ngOnInit() {
    this.inboxIcon = this.sanitizer.bypassSecurityTrustHtml(inbox.toSVG());

    this.route.firstChild
    this.route.data.subscribe(data => {
      this.rooms = data.rooms;
      if (!this.route.firstChild && (this.rooms.length > 0)){
        this.router.navigate(["/rooms",this.rooms[0].id]);
      }
    });
  }

}
