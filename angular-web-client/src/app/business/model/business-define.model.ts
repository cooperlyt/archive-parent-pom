import { FieldDefine } from './field-define.model';
import { BusinessCategory } from './business-category.model';
import { FieldGroup } from './field-group.model';

export class BusinessDefine{
    id: string;
    name: string;
    wfName: string;
    startPage: string;
    memo: string;
    version: number;
    rolePrefix: string;
    description: string;
    priority: number;
    enable: boolean;
    defineVersion: number;
    defaultRoom: string;
    defaultRack: string;
    summary:any;

    fields: FieldGroup[];
    businessCategory: BusinessCategory;
}