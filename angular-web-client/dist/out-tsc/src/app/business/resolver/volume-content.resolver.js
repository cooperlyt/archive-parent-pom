import * as tslib_1 from "tslib";
import { Injectable } from "@angular/core";
import { BusinessService } from '../services/business.service';
var VolumeContentResolver = /** @class */ (function () {
    function VolumeContentResolver(_businessService) {
        this._businessService = _businessService;
    }
    VolumeContentResolver.prototype.resolve = function (route, state) {
        var id = route.params["id"];
        if (!id) {
            var parentActivatedRoute = route.parent;
            id = parentActivatedRoute.params["id"];
        }
        return this._businessService.getVolumeContext(id);
    };
    VolumeContentResolver = tslib_1.__decorate([
        Injectable({
            providedIn: 'root'
        }),
        tslib_1.__metadata("design:paramtypes", [BusinessService])
    ], VolumeContentResolver);
    return VolumeContentResolver;
}());
export { VolumeContentResolver };
//# sourceMappingURL=volume-content.resolver.js.map