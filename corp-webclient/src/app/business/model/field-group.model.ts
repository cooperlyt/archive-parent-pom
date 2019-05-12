import { FieldDefine } from './field-define.model';

export class FieldGroup{
    id:string;
    name:string;
    type:string;
    editorOrdinal:number;
    displayOrdinal:number;
    viewRow:number;
    option:any;
    fieldDefines: FieldDefine[];
}