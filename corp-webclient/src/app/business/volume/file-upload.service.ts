import { Injectable } from '@angular/core';
import { FileUploader, FileItem, ParsedResponseHeaders } from 'ng2-file-upload';
import { VolumeContext } from '../model/volume-context.model';
import { FormGroup, Validators, FormBuilder } from '@angular/forms';
import { environment } from '../../../environments/environment';
import { VolumeItem } from '../model/volume-item.model';
import { Subject, EMPTY, Observable } from 'rxjs';
import { BusinessService } from '../services/business.service';
import { Business } from '../model/business.model';
import { catchError } from 'rxjs/operators';

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

  get isCanView():boolean{
    //TODO add pdf and dwg
    return this.isImage;
  }

  get imageThumb():string{
    return `${environment.fileUrl}/img/100x100s/${this.volume.id}`
  }

  get previewSource():any{
    if (this.volume){
      if (this.isImage){
        
        return `${environment.fileUrl}/img/orig/${this.volume.id}.` +  this.fileType.substr(this.fileType.indexOf('/') + 1);
      }else if (this.isPdf){
        return `${environment.fileUrl}/pdf/${this.volume.id}.pdf`
      }
    }else if (this.isImage || this.isPdf){
      return this.item._file;
    }
    return null;
  }
  
}



export class Items{

  i :number;
  contexts:VolumeContextUploadItem[] = [];

  get waitUpdateCount():number{
    let result = 0;
    this.contexts.forEach(bind =>{
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
    this.contexts.forEach(bind =>{
      if (bind.item && !bind.volume){
        if (bind.isUploaded ){
          result++;
        }
      }
    });
    return result;
  }

  get pageCountTotal():number{
    let result = 0;
    this.contexts.forEach(data => {
      result += data.control.value.pageCount;
    });
    return result;
  }
  
  constructor(private fb: FormBuilder,
    public item: VolumeItem){
    this.i = 0;
    item.contexts.forEach((context: VolumeContext) => {
      let formGroup = fb.group({
        id:[context.id,[Validators.required,Validators.maxLength(32)]],
        type:[context.type,Validators.required],
        ordinal:[context.ordinal,Validators.required],
        pageCount:[context.pageCount,Validators.required]
      })
      
      let bindItem = new VolumeContextUploadItem(formGroup,this.i++);
      bindItem.volume = context;
      this.contexts.push(bindItem);
    });
  }

  public deleteByContextId(id:string){
    this.contexts = this.contexts.filter(item => {
      if (item.volume){
        const result = item.volume.id !== id;
        if (!result && item.item){
          item.item.remove();
        }
        return result;
      }else{
        return true;
      }
    });
  }

  public deleteByIndex(i:number){
    //this.getItemByIndex(index)
    this.contexts = this.contexts.filter(data => {
      const result = data.index !== i;
      if (!result){
        data.item.remove();
      }
      return result;
    });
  }

  public addFileItem(fileItem: FileItem){
    
    fileItem.withCredentials = false; 
    let formGroup = this.fb.group({
        id:[null],
        type:[fileItem.file.type,Validators.required],
        ordinal:[this.getNewOrdinal(),Validators.required],
        pageCount:[1,Validators.required]
    });
    let bindItem = new VolumeContextUploadItem(formGroup,this.i++);
    bindItem.item = fileItem;
    this.contexts.push(bindItem);
  }

  public onSuccessItem(item: FileItem, fid:string): VolumeContext{
    let bind = this.getItemByFile(item);
    bind.control.get('id').setValue(fid);
    bind.fid = fid;
    return bind.control.value;
  }

  public getItemByFile(fileItem: FileItem):VolumeContextUploadItem{
    let result:VolumeContextUploadItem = null;
    for(let  item of this.contexts ){
      if (item.item == fileItem){
        result =  item;
        break;
      }
    }
    return result;
  }

  public getContextByIndex(index:number): VolumeContext{
    return this.getItemByIndex(index).volume;
  }

  public getItemByIndex(index:number):VolumeContextUploadItem{
    for(let item of this.contexts){
      if (item.index === index){
        return item;
      }
    }
    return null;
  }

  public onCompleteItem(context :VolumeContext):boolean{
    for(let item of this.contexts ){
      if (item.fid === context.id){
        item.fid = null;
        item.volume = context;
        return true;
      }
    }
    return false;
  }

  private getNewOrdinal(){
    let result = 0;
    this.contexts.forEach(data => {
      if (data.control.value.ordinal > result){
        result = data.control.value.ordinal;
      }
    });
    return result + 100000;
  }



}
  
@Injectable()
export class FileUploadService{

  constructor(private fb: FormBuilder,    
    private businessServer: BusinessService) {}

  businessId: string;
  items: {[key:number]:Items};
  itemId:number;

  get allItems():Items[]{
    return Object["values"](this.items);
  }

  get cancelCount():number{
    let result = 0;
    this.allItems.forEach(data => {
      result += data.cancelCount;
    })
    return result;
  }

  get allUploadItemCount():number{
    let result = 0;
    this.allItems.forEach(data => {
      result += data.contexts.length;
    })
    return result;
  }

  get waitUpdateCount():number{
    let result = 0;
    this.allItems.forEach(data => {
      result += data.waitUpdateCount;
    })
    return result;
  }

  get pageCountTotal():number{
    let result = 0;
    this.allItems.forEach(data => {
      result += data.pageCountTotal;
    });
    return result;
  }
  
  private afterAddingFileSource = new Subject<void>();
  onAfterAddingFile$ = this.afterAddingFileSource.asObservable();


  public getUploadItem(itemsId:number,index:number){
    return this.items[itemsId].getItemByIndex(index);
  }

  public itemReg(id:number){
    this.itemId = id;
  }

  public OnInit(businessId:string, items: VolumeItem[]){
    this.items = {};
    this.itemId = null;
    this.businessId = businessId;
    items.forEach(data => {
      this.items[data.id] = new Items(this.fb,data);
    });
        
    this.uploader.onAfterAddingFile = (fileItem: FileItem) => {
      this.items[this.itemId].addFileItem(fileItem);
      this.afterAddingFileSource.next(null);
      console.log('onAfterAddingFile is call' );
    }

    this.uploader.onSuccessItem = (fileItem: FileItem, response: string, status: number, headers: ParsedResponseHeaders): any => {
      console.log("OnSuccessItem call:" + status);
      if(status ==  200 || status ==  201){
        const fid = JSON.parse(response).fid;
        if (fid){
          const items = this.getItemByFile(fileItem);
          this.businessServer.saveVolumeContext(items.onSuccessItem(fileItem,fid),items.item.id).pipe(
            catchError(err => {
         
              return EMPTY;
            })
          ).subscribe(context => {
            for (let item of this.allItems){
              if (item.onCompleteItem(context)){
                break;
              }
            }
          });
        }else{
          fileItem.cancel();
        }
      }
    }
  }

  deleteAll(itemId:number){
    this.businessServer.clearVolumeContext(itemId).subscribe(id => {
      this.items[id].contexts.forEach(item => {
        if (item.item){
          item.item.remove();
        }
      });
      this.items[id].contexts = [];
    })  
  }

  deleteItem(itemId:number,index:number){
    let context = this.items[itemId].getContextByIndex(index);
    if (context){
      this.businessServer.deleteVolumeContext(context.id).subscribe(id =>{
        this.allItems.forEach(items => items.deleteByContextId(id));
      });
    }else{
      this.items[itemId].deleteByIndex(index);
    }
  }

  public addItem(itemName: string){
    let item = new VolumeItem();
    let seq = 0;
    // Object.keys(this.items).forEach(key => {
    //    if (this.items[key].item.seq > seq){
    //     seq = item.seq;
    //    }
    // })

    this.allItems.forEach((item:Items) => {
      if (item.item.seq > seq){
        seq = item.item.seq;
      }
    });
    item.name = itemName;
    item.seq = seq + 10000;
    item.type = 'OPT';
    this.businessServer.saveVolumeItem(this.businessId,item).subscribe(item => {
      this.items[item.id] = new Items(this.fb,item);
    })
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


  private getItemByFile(fileItem:FileItem):Items{

    for(let items of this.allItems) {
      if (items.getItemByFile(fileItem)){
        return items;
      }
    }
    return null;
  }

}