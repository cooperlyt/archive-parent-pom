import { environment } from '../../../environments/environment';

export class VolumeContext{


    constructor(obj?: any){
        Object.assign(this, obj);
    }

    id:string;
    type:string;
    ordinal:number;
    pageCount:number;
    md5:string;

    title?: string;
    description?:string;

    get isImage():boolean{
        return this.type.startsWith("image");
    }

    get isPdf():boolean{
        return this.type == 'application/pdf';
      }
    

    get origAddress():string{
        if (this.isPdf){
            return `${environment.fileUrl}/pdf/${this.id}.pdf` ;
        }else if (this.isImage){
            return `${environment.fileUrl}/img/orig/${this.id}.` + this.type.substr(this.type.indexOf('/') + 1); 
        }else {
            return `${environment.fileUrl}/file/${this.id}.` + this.type.substr(this.type.indexOf('/') + 1);
        }
    }

    getThumb(size: string):string{
        return `${environment.fileUrl}/img/${size}/${this.id}.`   +  this.type.substr(this.type.indexOf('/') + 1); 
    }
}