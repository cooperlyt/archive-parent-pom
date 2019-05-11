import * as tslib_1 from "tslib";
import { Injectable } from "@angular/core";
import { BusinessService } from '../../services/business.service';
var BusinessDefineResolver = /** @class */ (function () {
    function BusinessDefineResolver(_businessService) {
        this._businessService = _businessService;
    }
    BusinessDefineResolver.prototype.resolve = function (route, state) {
        var id = route.params["id"];
        return this._businessService.getBusinessDefine(id);
    };
    BusinessDefineResolver = tslib_1.__decorate([
        Injectable({
            providedIn: 'root'
        }),
        tslib_1.__metadata("design:paramtypes", [BusinessService])
    ], BusinessDefineResolver);
    return BusinessDefineResolver;
}());
export { BusinessDefineResolver };
//# sourceMappingURL=business-define.resolve.js.map