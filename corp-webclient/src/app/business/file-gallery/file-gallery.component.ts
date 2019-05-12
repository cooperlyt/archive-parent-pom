import { Component, OnInit, Input, Output, EventEmitter, ViewChild, ElementRef } from '@angular/core';
import { VolumeContext } from '../model/volume-context.model';
import { environment } from '../../../environments/environment';
import { ActivatedRoute } from '@angular/router';
import { faFile } from '@fortawesome/free-solid-svg-icons';
import { NgxGalleryOptions, NgxGalleryImage, NgxGalleryAnimation, NgxGalleryImageSize, NgxGalleryComponent } from 'ngx-gallery';
import { Business } from '../model/business.model';
import { VolumeItem } from '../model/volume-item.model';


declare class ContextNgxGalleryImage extends NgxGalleryImage{

  contextId: string;
}

@Component({
  selector: 'app-file-gallery',
  templateUrl: './file-gallery.component.html',
  styleUrls: ['./file-gallery.component.scss']
})
export class FileGalleryComponent implements OnInit {

  @ViewChild('onlyPreviewGallery') onlyPreviewGallery: NgxGalleryComponent;
  galleryOptions: NgxGalleryOptions[];
  galleryImages: ContextNgxGalleryImage[];

  faFile = faFile;

  business: Business;
  items:VolumeItem[];
  
  selectItem: VolumeItem;

  get viewItems(): VolumeItem[]{
    if (this.selectItem){
      return [this.selectItem];
    }else{
      return this.items.filter(item => item.contexts.length > 0);
    }
  }

  constructor(private _route: ActivatedRoute) { }

  openPreview(itemId:string){

    if (this.galleryImages){
      for (let item of this.galleryImages){
        if (itemId === item.contextId ){
          this.onlyPreviewGallery.openPreview(this.galleryImages.indexOf(item));
          return;
        }
      }
    }
    
  }

  onItemSelect(item?:VolumeItem){
    this.selectItem = item;
    this.galleryImages = [];
    if (item){
      item.contexts.forEach(context => {
        if (context.isImage){
          this.galleryImages.push({big: context.origAddress,contextId: context.id, description: context.description})
        }
      })
    }else{
      this.items.forEach(item => item.contexts.forEach(context => {
        if (context.isImage){
          this.galleryImages.push({big: context.origAddress,contextId: context.id, description: context.description})
        }
      }));
    }
  }

  ngOnInit() {

    this._route.data.subscribe(data => {
      this.business = data.business;
      this.items = data.items;
      this.onItemSelect();
    });

    this.galleryOptions = [
      { "image": false, "thumbnails": false, "width": "0px", "height": "0px" ,"previewZoom": true, "previewRotate": true},
      { "breakpoint": 500, "width": "300px", "height": "300px", "thumbnailsColumns": 3 },
      { "breakpoint": 300, "width": "100%", "height": "200px", "thumbnailsColumns": 2 },
    ];

  }

}
