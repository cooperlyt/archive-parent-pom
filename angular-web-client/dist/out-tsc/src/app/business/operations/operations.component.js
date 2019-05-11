import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { OperationType } from '../enumData';
var OperationsComponent = /** @class */ (function () {
    function OperationsComponent(_route) {
        this._route = _route;
        this.operationType = OperationType;
    }
    OperationsComponent.prototype.ngOnInit = function () {
        var _this = this;
        this._route.data.subscribe(function (data) { return _this.operations = data.operations; });
    };
    OperationsComponent = tslib_1.__decorate([
        Component({
            selector: 'app-operations',
            templateUrl: './operations.component.html',
            styleUrls: ['./operations.component.scss']
        }),
        tslib_1.__metadata("design:paramtypes", [ActivatedRoute])
    ], OperationsComponent);
    return OperationsComponent;
}());
export { OperationsComponent };
//# sourceMappingURL=operations.component.js.map