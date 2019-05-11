import * as tslib_1 from "tslib";
import { Injectable } from "@angular/core";
import { BusinessService } from '../services/business.service';
var BusinessCreateResolver = /** @class */ (function () {
    function BusinessCreateResolver(_businessService) {
        this._businessService = _businessService;
    }
    BusinessCreateResolver.prototype.resolve = function (route, state) {
        var id = route.params["id"];
        return this._businessService.createNewBusiness(id);
    };
    BusinessCreateResolver = tslib_1.__decorate([
        Injectable({
            providedIn: 'root'
        }),
        tslib_1.__metadata("design:paramtypes", [BusinessService])
    ], BusinessCreateResolver);
    return BusinessCreateResolver;
}());
export { BusinessCreateResolver };
//# sourceMappingURL=business-create.resolve.js.map