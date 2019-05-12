import { FieldValue } from './field-value.model';

export class ValueGroup{
    id:string;
    name: string;
    type:string;
    ordinal:number;
    option:any;
    row:number;
    define:string;
    fieldDefines:FieldValue[];
}