import * as tslib_1 from "tslib";
import { Injectable } from "@angular/core";
import { BusinessService } from '../services/business.service';
var OperationResolver = /** @class */ (function () {
    function OperationResolver(businessServer) {
        this.businessServer = businessServer;
    }
    OperationResolver.prototype.resolve = function (route, state) {
        var id = route.params["id"];
        if (!id) {
            var parentActivatedRoute = route.parent;
            id = parentActivatedRoute.params["id"];
        }
        return this.businessServer.listOperation(id);
    };
    OperationResolver = tslib_1.__decorate([
        Injectable({
            providedIn: 'root'
        }),
        tslib_1.__metadata("design:paramtypes", [BusinessService])
    ], OperationResolver);
    return OperationResolver;
}());
export { OperationResolver };
//# sourceMappingURL=operation.resolver.js.map