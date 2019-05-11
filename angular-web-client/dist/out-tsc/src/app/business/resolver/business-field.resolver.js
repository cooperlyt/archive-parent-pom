import * as tslib_1 from "tslib";
import { Injectable } from "@angular/core";
import { BusinessService } from '../services/business.service';
var BusinessFieldResolver = /** @class */ (function () {
    function BusinessFieldResolver(_businessService) {
        this._businessService = _businessService;
    }
    BusinessFieldResolver.prototype.resolve = function (route, state) {
        var id = route.params["id"];
        if (!id) {
            var parentActivatedRoute = route.parent;
            id = parentActivatedRoute.params["id"];
        }
        return this._businessService.getBusinessFields(id);
    };
    BusinessFieldResolver = tslib_1.__decorate([
        Injectable({
            providedIn: 'root'
        }),
        tslib_1.__metadata("design:paramtypes", [BusinessService])
    ], BusinessFieldResolver);
    return BusinessFieldResolver;
}());
export { BusinessFieldResolver };
//# sourceMappingURL=business-field.resolver.js.map