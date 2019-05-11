import { Component, OnInit, ElementRef, ViewChild, AfterViewInit, HostListener } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { faBook, faFile } from '@fortawesome/free-solid-svg-icons';
import { mimeTypes } from "mime-wrapper";
import { DragulaService } from 'ng2-dragula';
import { IMAGEVIEWER_CONFIG, ImageViewerConfig, createButtonConfig } from '@hallysonh/ngx-imageviewer';
import { FileUploadService, Items, VolumeContextUploadItem } from '../volume/file-upload.service';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { Subscription } from 'rxjs';
import { VolumeContext } from '../model/volume-context.model';
import { BusinessService } from '../services/business.service';

const MY_IMAGEVIEWER_CONFIG: ImageViewerConfig = {
  buttonStyle: {
    bgStyle: '#B71C1C' // custom container's background style
  },
  width: 766, // component default width
  height: 600, // component default height
  nextPageButton: createButtonConfig('navigate_next', '下一页', 0),
  beforePageButton: createButtonConfig('navigate_before', '上一页', 1),
  zoomInButton: createButtonConfig('zoom_in', '放大', 0),
  zoomOutButton: createButtonConfig('zoom_out', '缩小', 1),
  rotateLeftButton: createButtonConfig('rotate_left', '左转', 2),
  rotateRightButton: createButtonConfig('rotate_right', '右转', 3),
  resetButton: createButtonConfig('autorenew', '还原', 4),
};


@Component({
  selector: 'app-file-upload',
  templateUrl: './file-upload.component.html',
  styleUrls: ['./file-upload.component.scss'],
  providers: [
    {
      provide: IMAGEVIEWER_CONFIG,
      useValue: MY_IMAGEVIEWER_CONFIG
    }
  ]
})
export class FileUploadComponent implements OnInit , AfterViewInit{

  @ViewChild('imagewrapper') wrapper: ElementRef;
  
  faFile = faFile;
  faBook = faBook;



  // selectItem: VolumeContextUploadItem;

  constructor(private _route: ActivatedRoute, 
    private elementRef: ElementRef,
    private fileUploadService: FileUploadService,
    private businessServer: BusinessService,
    private _modalService: NgbModal,
    private dragulaService: DragulaService) {
      this.initDragula();
  }

  subs = new Subscription();

  private initDragula(){
    this.dragulaService.destroy('SPILL');

    this.dragulaService.createGroup("SPILL", {
      removeOnSpill: false
    });

    this.subs.add(this.dragulaService.dropModel("SPILL")
    // WHOA
    // .subscribe(({ name, el, target, source, sibling, sourceModel, targetModel, item }) => {
      .subscribe(({ sourceModel, targetModel, item }) => {
       
        let index :number;
        for (let i = 0 ; i < targetModel.length ; i++ ) {
          if (targetModel[i] == item){
            index = i;
            break;
          }
        }   

        let reset = false;
        let ordinal:number;
        if (index === 0){
          ordinal = targetModel[index + 1].control.value.ordinal - 100000;
          reset = ordinal <= -2147483648;
        }else if (index === (targetModel.length - 1)){
          ordinal = targetModel[index - 1].control.value.ordinal + 100000;
          reset = ordinal >= 2147483647;
        }else{
          ordinal = ((targetModel[index + 1].control.value.ordinal - targetModel[index - 1].control.value.ordinal) / 2 | 0) + targetModel[index - 1].control.value.ordinal;
          reset = (ordinal >= targetModel[index + 1].control.value.ordinal) || (ordinal <= targetModel[index - 1].control.value.ordinal);
        }

        index = 0;
        if (reset){
          let values: VolumeContext[] = [];
          targetModel.forEach(data => {
            index += 100000
            data.control.get('ordinal').setValue(index)
            if (data.volume){
              data.volume.ordinal = index;
              values.push(data.control.value);
            }
          })
          if (values.length > 0){

            this.businessServer.updateVolumeContexts(this.volumeId,values).subscribe();
          }

        }else {
          item.control.get('ordinal').setValue(ordinal);
          if (item.volume){
            item.volume.ordinal = ordinal;

            this.businessServer.saveVolumeContext(item.control.value,this.volumeId).subscribe();
          }
        }
      
        console.log("item index:" , index );
      })
    );
  }
  
  // business: Business;

  // // formBind: VolumeContextUploadItem[] = [];

  

  // private _canvasDim = { width: 766, height: 600 };
  // get canvasDim() {
  //   return this._canvasDim;
  // }

  // private updateCanvasDim() {

    
  //   const el = this.wrapper && this.wrapper.nativeElement ? this.wrapper.nativeElement : null;
  //   if (el && (el.offsetWidth !== this._canvasDim.width || el.offsetHeight !== this._canvasDim.height)) {
  //     const newDim = { width: el.offsetWidth - 2, height: el.offsetHeight - 2 };
  //     console.log("resize:" , el.offsetWidth);
  //     setTimeout(() => this._canvasDim = newDim, 0);
  //   }
  // }

  // @HostListener('window:resize', ['$event'])
  // onResize(event) {
  //   this.updateCanvasDim();
  // }

  private selectIndex: number;

  get selectItem():VolumeContextUploadItem{
    return this.fileUploadService.getUploadItem(this.volumeId,this.selectIndex);
  }

  openActionModal(index:number,content,action?:string){  
    this.selectIndex = index;

    let option = {}
    if (action == 'preview'){
      const uploadItem = this.selectItem;
      if (uploadItem){
        if (uploadItem.isCanView){
          option = {size: 'lg'};
        }else if (uploadItem.volume){
          window.open(uploadItem.previewSource , "_blank");
          return;
        }else{
          return;
        }
      }
    }
    this._modalService.open(content,option);
  }

  deleteItem(){
    this.fileUploadService.deleteItem(this.volumeId,this.selectIndex);
    this._modalService.dismissAll();
  }

  onPageCountChange(item: VolumeContextUploadItem){
    console.log("change :" + item.control.get('pageCount').value);
    if (item.volume){
      //item.volume.pageCount = item.control.get('pageCount').value;
      this.businessServer.saveVolumeContext(item.control.value,this.volumeId).subscribe(newContext =>{
        for(let i of this.item.contexts){
          if (i.volume.id === newContext.id){
            i.volume = newContext;
            
          }
        }
      });
    }
  }

  getPageByIndex(index: number, onlyStart?: boolean): string{
    let result = 1;
    for(let item of this.item.contexts){
      if (item.index === index){
        if (item.control.value.pageCount > 1){
    
          return  onlyStart ? `${result}` : `${result} - ${result + item.control.value.pageCount - 1}`;
        }else{
          return `${result}`;
        }
      }
      result += item.control.value.pageCount;
    }
    return null;
  }

  private volumeId: number;


  get item():Items{
    return this.fileUploadService.items[this.volumeId];
  }

  ngOnInit() {
    this._route.params.subscribe(params => {
      const id = params['id'];
      this.fileUploadService.itemReg(id);
      this.volumeId = id;
     
      console.log("OnSuccessItem call:" + params['id']);
    });
  }

  ngAfterViewInit(){
    this.elementRef.nativeElement.ownerDocument.body.style.backgroundColor = '#f9f9f9';
  }
  ngOnDestroy(): void {
    this.elementRef.nativeElement.ownerDocument.body.style.backgroundColor ="#fff";
  }

}
