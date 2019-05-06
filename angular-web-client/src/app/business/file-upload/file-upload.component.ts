import { Component, OnInit, ElementRef, ViewChild, AfterViewInit, HostListener } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Business } from '../model/business.model';
import {  FileUploader, FileSelectDirective, FileItem, ParsedResponseHeaders } from 'ng2-file-upload/ng2-file-upload';
import { environment } from '../../../environments/environment';
import { FormArray, FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { faBook } from '@fortawesome/free-solid-svg-icons';
import { repo, x } from 'octicons';
import { DomSanitizer } from '@angular/platform-browser';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { VolumeContext } from '../model/volume-context.model';
import { BusinessService } from '../services/business.service';
import { catchError } from 'rxjs/operators';
import { EMPTY, Subscription } from 'rxjs';
import { faAngleDown, faAngleUp } from '@fortawesome/free-solid-svg-icons';
import { faFile } from '@fortawesome/free-regular-svg-icons';
import { mimeTypes } from "mime-wrapper";
import { DragulaService } from 'ng2-dragula';
import { IMAGEVIEWER_CONFIG, ImageViewerConfig, createButtonConfig } from '@hallysonh/ngx-imageviewer';

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

export class VolumeContextUploadItem{

  constructor(public control: FormGroup,public index:number){ }

  item: FileItem;
  volume: VolumeContext;
  fid: String;



  get isReady(): boolean{
    if (this.item){
      return this.item.isReady && this.control.valid;
    }
    return false;
  }
  get isUploading(): boolean{
    if (this.item){
      return this.item.isUploading || !!this.fid;
    }
    return false;
  }
  get isUploaded(): boolean{
    if (this.item){
      return this.item.isUploaded
    }
    return true;
  }
  
  get isSuccess(): boolean{
    if (this.item){
      return !!this.volume && this.item.isSuccess;
    }
  }
  get isCancel(): boolean{
    if (this.item){
      return this.item.isCancel;
    }
    return false;
  }
  get isError(): boolean{
    if (this.item){
      return this.item.isError;
    }
    return false;
  }

  get progress():number{
    if (this.item){
      if (this.volume){
        return this.item.progress
      }
      return this.item.progress - 5 ;
    }else{
      return 0;
    }
  }

  get fileType():string{
    if (this.item){
      return this.item.file.type;
    }else{
      return this.volume.type;
    }
  }

  get isImage():boolean{
    return this.fileType.startsWith("image");
  }

  get isPdf():boolean{
    return this.fileType == 'application/pdf';
  }

  get imageThumb():string{
    return `${environment.fileUrl}/img/100x100s/${this.volume.id}`
  }

  get previewSource():any{
    if (this.volume){
      if (this.isImage){
       
        return `${environment.fileUrl}/img/orig/${this.volume.id}.` +  this.fileType.substr(this.fileType.indexOf('/') + 1);
      }else if (this.isPdf){
        console.log('view pdf:', `${environment.fileUrl}/pdf/${this.volume.id}.pdf`)
        return `${environment.fileUrl}/pdf/${this.volume.id}.pdf`
      }
    }else if (this.isImage || this.isPdf){
      return this.item._file;
    }
    return null;
  }

}

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
  
  faAngleDown = faAngleDown;
  faAngleUp = faAngleUp;
  faFile = faFile;
  faBook = faBook;
  repoIcon = repo.toSVG();
  xIcon = x.toSVG();


  saveing = false;

  private i = 0;

  selectItem: VolumeContextUploadItem;

  constructor(private _route: ActivatedRoute, 
    private elementRef: ElementRef,
    private sanitizer: DomSanitizer,
    private _modalService: NgbModal,
    private fb: FormBuilder,
    private businessServer: BusinessService,
    private dragulaService: DragulaService) {
      dragulaService.createGroup("SPILL", {
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
              this.saveing = true;
              this.businessServer.updateVolumeContexts(this.business.id,values).subscribe(_=> this.saveing = false);
            }

          }else {
            item.control.get('ordinal').setValue(ordinal);
            if (item.volume){
              item.volume.ordinal = ordinal;
              this.saveing = true;
              this.businessServer.putVolumeContext(item.control.value,this.business.id).subscribe(_=>this.saveing = false);
            }
          }
        
          console.log("item index:" , index );
        })
      );
  }

  subs = new Subscription();
  
  business: Business;

  formBind: VolumeContextUploadItem[] = [];

  

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

  @HostListener('window:resize', ['$event'])
  onResize(event) {
    this.updateCanvasDim();
  }

  get waitUpdateCount():number{
    let result = 0;
    this.formBind.forEach(bind =>{
      if (bind.item && !bind.volume){
        if (bind.control.valid && !bind.isUploaded && !bind.isSuccess){
          result++;
        }
      }
    });
    return result;
  }

  get cancelCount():number{
    let result = 0;
    this.formBind.forEach(bind =>{
      if (bind.item && !bind.volume){
        if (bind.isUploaded ){
          result++;
        }
      }
    });
    return result;
  }

  private getBindByItem(fileItem: FileItem):VolumeContextUploadItem{
    let result:VolumeContextUploadItem = null;
    this.formBind.forEach(bind => {
      if (bind.item == fileItem){
        result =  bind;
        return;
      }
    })
    return result;
  }

  private getBindByIndex(index:number):VolumeContextUploadItem{
    let result:VolumeContextUploadItem = null;
    this.formBind.forEach(data =>{
      if (data.index === index){
        result = data;
        return;
      }
    });
    return result;
  }

  private getNewOrdinal(){
    let result = 0;
    this.formBind.forEach(data => {
      if (data.control.value.ordinal > result){
        result = data.control.value.ordinal;
      }
    });
    return result + 100000;
  }


  openActionModal(index:number,content,action?:string){  
    this.selectItem = this.getBindByIndex(index);
    let option = {}
    if (action == 'edit'){
      option = {backdrop: 'static'}
    }else if (option = 'preview'){
      if (this.selectItem.isPdf || this.selectItem.isImage){
        option = {size: 'lg'}
      }else{
        return ;
      }
    }

    this.saveing = false;
    this._modalService.open(content,option);
  }


  deleteAllConfirme(content){
    this.saveing = false;
    this._modalService.open(content);
  }

  deleteAll(){
    this.saveing = true;
    this.businessServer.clearVolumeContext(this.business.id).subscribe(count => {
      this.saveing = false;
      this.formBind = [];
      this.uploader.clearQueue();
      this._modalService.dismissAll('clear');
    })  
  }

  deleteItem(){
    this.saveing = true;
    if (this.selectItem.volume){
      this.businessServer.deleteVolumeContext(this.selectItem.volume.id).subscribe(data =>{
        this.formBind = this.formBind.filter(item => {
          if (item.volume){
            return item.volume.id !== data
          }else{
            return true;
          }
          
        });
        if (this.selectItem.item){
          this.selectItem.item.remove();
        }
        this._modalService.dismissAll('deleted');
        this.saveing = false;
      });
    }else{
      this.formBind = this.formBind.filter(bind => bind.item !== this.selectItem.item);
      this.selectItem.item.remove();
      this._modalService.dismissAll('deleted');
      this.saveing = false;
    }
  }

  saveItem(context){
    this.saveing = true;

    this.businessServer.putVolumeContext(this.selectItem.control.value,this.business.id).subscribe(id => {
      this.formBind.forEach(item => {
        if (item.volume && (item.volume.id === id)){
          item.volume = item.control.value;
        }
      });
      this.saveing = false;
      this._modalService.dismissAll('update');
    });
    
  }

  getPageByIndex(index: number, onlyStart?: boolean): string{
    let result = 1;
    for(let item of this.formBind){
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


  get getPageCountTotal():number{
    let result = 0;
    this.formBind.forEach(data => {
      result += data.control.value.pageCount;
    });
    return result;
  }

  openFileOverModal(event,content){
    this._modalService.dismissAll("reopen");
    this._modalService.open(content,{ size: 'lg' ,centered: true});
  }
  

  //TODO oauth toke
  public uploader: FileUploader = new FileUploader({url: `${environment.fileUrl}/upload/`,
    method: "PUT",
    isHTML5:true, 
    // authTokenHeader: "Authorization",
    // authToken: "Bearer " + localStorage.getItem('access_token'),
    itemAlias: 'uploadedfile',
    // allowedMimeType: ['image/png', 'image/jpg', 'image/jpeg'],
    // maxFileSize: 10*1024*1024 * 1024,// 100 MB
    headers:[
      {name:"Accept",value:"application/json"}
    ]
  });


  ngOnInit() {
    this.repoIcon = this.sanitizer.bypassSecurityTrustHtml(repo.toSVG());
    this.xIcon = this.sanitizer.bypassSecurityTrustHtml(x.toSVG());
    this._route.data.subscribe((data: {business: Business, content: VolumeContext[]}) => {
      this.business = data.business;
      this.business.contexts = data.content;

      this.business.contexts.forEach((context: VolumeContext) => {

        let formGroup = this.fb.group({
          id:[context.id,[Validators.required,Validators.maxLength(32)]],
          type:[context.type,Validators.required],
          ordinal:[context.ordinal,Validators.required],
          pageCount:[context.pageCount,Validators.required],
          name:[context.name,[Validators.required,Validators.maxLength(32)]]
        })
        
        let bindItem = new VolumeContextUploadItem(formGroup,this.i++);
        bindItem.volume = context;
        this.formBind.push(bindItem);

      })
    });



    this.uploader.onAfterAddingFile = (fileItem: FileItem) => {
      
      let filename = fileItem.file.name;
      if (filename.length > 32){
        filename = filename.substr(0,31);
      }
      if (filename.lastIndexOf('.') > 0){
        filename = filename.substr(0,filename.lastIndexOf('.'));
      }
      this._modalService.dismissAll("added");
      let index:number = this.i++;
      fileItem.withCredentials = false; 
      let formGroup = this.fb.group({
          id:[null],
          type:[fileItem.file.type,Validators.required],
          ordinal:[this.getNewOrdinal(),Validators.required],
          pageCount:[1,Validators.required],
          name:[filename,[Validators.required,Validators.maxLength(32)]]
      });
      let bindItem = new VolumeContextUploadItem(formGroup,index);
      bindItem.item = fileItem;
      this.formBind.push(bindItem);

      console.log('onAfterAddingFile is call' );
    }

    this.uploader.onSuccessItem = (item: FileItem, response: string, status: number, headers: ParsedResponseHeaders): any => {
      console.log("OnSuccessItem call:" + status);
      if(status ==  200 || status ==  201){
        const fid = JSON.parse(response).fid;
        if (fid){
          let bind = this.getBindByItem(item);
          bind.control.get('id').setValue(fid);
          bind.fid = fid;
          this.businessServer.putVolumeContext(bind.control.value,this.business.id).pipe(
            catchError(err => {
              
              return EMPTY;
            })
          ).subscribe(id => {
            this.formBind.forEach(data=>{
              if (data.fid === id){
                data.fid = null;
                data.volume = data.control.value
              }
            })
            //TODO complete item
          });
        }else{
          item.cancel();
        }
      }
      
      console.log("OnSuccessItem call:" + response)
    };
  }

  ngAfterViewInit(){
    this.updateCanvasDim();
    this.elementRef.nativeElement.ownerDocument.body.style.backgroundColor = '#f9f9f9';
  }
  ngOnDestroy(): void {
    this.elementRef.nativeElement.ownerDocument.body.style.backgroundColor ="#fff";
  }

}
