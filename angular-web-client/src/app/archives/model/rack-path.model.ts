import { CabinetPath } from './cabinet-path.model';
import { Rack } from './rack.model';
import { Cabinet } from './cabinet.model';

export class RackPath{
    cabinetPath: CabinetPath;
    rack: Rack;
    cabinets: Cabinet[];
}