import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
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

  loadding = false;

  constructor(private route: ActivatedRoute,private router: Router,private sanitizer: DomSanitizer) { }

  rooms: Room[];

  ngOnInit() {
    this.inboxIcon = this.sanitizer.bypassSecurityTrustHtml(inbox.toSVG());
    this.route.data.subscribe(data => {
      this.rooms = data.rooms;
      if (!this.route.firstChild && (this.rooms.length > 0)){
        this.router.navigate(["/rooms",this.rooms[0].id]);
      }
    });
  }

}
