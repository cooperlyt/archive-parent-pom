import * as tslib_1 from "tslib";
import { Injectable } from "@angular/core";
import { BusinessService } from '../services/business.service';
var BusinessResolver = /** @class */ (function () {
    function BusinessResolver(_businessService) {
        this._businessService = _businessService;
    }
    BusinessResolver.prototype.resolve = function (route, state) {
        var id = route.params["id"];
        if (!id) {
            var parentActivatedRoute = route.parent;
            id = parentActivatedRoute.params["id"];
        }
        return this._businessService.getBusiness(id);
    };
    BusinessResolver = tslib_1.__decorate([
        Injectable({
            providedIn: 'root'
        }),
        tslib_1.__metadata("design:paramtypes", [BusinessService])
    ], BusinessResolver);
    return BusinessResolver;
}());
export { BusinessResolver };
//# sourceMappingURL=business.resolver.js.map