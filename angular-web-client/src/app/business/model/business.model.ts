import { Volume } from './volume.model';
import { VolumeContext } from './volume-context.model';
import { ValueGroup } from './value-group.model';

export class Business{
    id:string;
    defineId:string;
    defineName:string;
    corpType: string;
    deliver:string;
    deliverId:string;
    receiveDate:Date;
    memo:string;
    key:string;
    status:string;
    summary:string;
    summaryTemplate: string;
    source:string;
    version:number;
    defineVersion:number;
    seq:number;
    projectName: string;
    
    volume:Volume;
    contexts:VolumeContext[];
    fields:ValueGroup[];

}