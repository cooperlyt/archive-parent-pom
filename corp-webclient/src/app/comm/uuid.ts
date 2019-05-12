import { v4 as uuid } from 'uuid';

export function genUUID():string{
    let result ="";
    uuid().split("-").forEach(element => {
        result = result + element;
    });
    return result;
}