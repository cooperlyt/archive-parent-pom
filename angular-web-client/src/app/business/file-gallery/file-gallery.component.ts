import { Component, OnInit, Input, Output, EventEmitter, ViewChild, ElementRef } from '@angular/core';
import { VolumeContext } from '../model/volume-context.model';
import { environment } from '../../../environments/environment';
import { ActivatedRoute } from '@angular/router';

import { NgxGalleryOptions, NgxGalleryImage, NgxGalleryAnimation, NgxGalleryImageSize } from 'ngx-gallery';


export class FileContext implements NgxGalleryImage{

  constructor( public type: string,public fid: string, public name: string){

  }

  get isPdf():boolean{
    return this.type == 'application/pdf';
  }

  get isImg():boolean{
    return this.type.startsWith("image");
  }

  get small(): string{
    if (this.isPdf){
      return `${environment.fileUrl}/pdf/${this.fid}`;
    }else if (this.isImg){
      return `${environment.fileUrl}/img/200x200/${this.fid}`;
    }
    return null;
  }

  get medium(): string{
    if (this.isPdf){
      return `${environment.fileUrl}/pdf/${this.fid}`;
    }else if (this.isImg){
      return `${environment.fileUrl}/img/800x600s/${this.fid}`;
    }
    return null;
  }

  get big(): string{
    if (this.isPdf){
      return `${environment.fileUrl}/pdf/${this.fid}`;
    }else if (this.isImg){
      return `${environment.fileUrl}/img/orig/${this.fid}`;
    }
    return null;
  }

  get description(): string{
    return this.name;
  }
  
}

@Component({
  selector: 'app-file-gallery',
  templateUrl: './file-gallery.component.html',
  styleUrls: ['./file-gallery.component.scss']
})
export class FileGalleryComponent implements OnInit {

  @ViewChild('imagewrapper') wrapper: ElementRef;

  galleryOptions: NgxGalleryOptions[];
  galleryImages: FileContext[] = [];

  imageSrc:string;

  constructor(private _route: ActivatedRoute) { }

  private _canvasDim = { width: 766, height: 600 };
  get canvasDim() {
    return this._canvasDim;
  }

  private updateCanvasDim() {  
    const el = this.wrapper && this.wrapper.nativeElement ? this.wrapper.nativeElement : null;
    if (el && (el.offsetWidth !== this._canvasDim.width || el.offsetHeight !== this._canvasDim.height)) {
      const newDim = { width: el.offsetWidth - 2, height: el.offsetHeight - 2 };
      console.log("resize:" , el.offsetWidth);
      setTimeout(() => this._canvasDim = newDim, 0);
    }
  }

  onImageChange(data:any){
    console.log(data)
  }


  ngOnInit() {

    this._route.data.subscribe((data: {content: VolumeContext[]}) => {
      data.content.forEach(data => {

        this.galleryImages.push(new FileContext(data.type,data.id,data.name));
      })

    });

    this.galleryOptions = [
      {
     
          height: '720px',
          width: '100%',
          imageAnimation: NgxGalleryAnimation.Slide,
          previewZoom: true, 
          previewRotate: true,
          thumbnailsColumns:7,
          thumbnailsArrowsAutoHide:false,
          imageSize:  NgxGalleryImageSize.Contain,
          imageDescription: true
          
      },
      {
        breakpoint: 800,
        width: '100%',
        height: '720px',
        imagePercent: 80,
        thumbnailsPercent: 20,
        thumbnailsMargin: 20,
        thumbnailMargin: 20,
 

        
    },
    // max-width 400
    {
        breakpoint: 400,
        preview: false
        
    }

    ];

  }

}
