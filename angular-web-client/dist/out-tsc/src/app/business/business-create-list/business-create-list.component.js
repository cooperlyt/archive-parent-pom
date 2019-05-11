import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { BusinessService } from '../services/business.service';
import { faBook } from '@fortawesome/free-solid-svg-icons';
var BusinessCreateListComponent = /** @class */ (function () {
    function BusinessCreateListComponent(_businessSvr) {
        this._businessSvr = _businessSvr;
        this.faBook = faBook;
    }
    BusinessCreateListComponent.prototype.ngOnInit = function () {
        var _this = this;
        this._businessSvr.listDefineSummary().subscribe(function (data) { return _this.defines = data; });
    };
    BusinessCreateListComponent = tslib_1.__decorate([
        Component({
            selector: 'app-business-create-list',
            templateUrl: './business-create-list.component.html',
            styleUrls: ['./business-create-list.component.scss']
        }),
        tslib_1.__metadata("design:paramtypes", [BusinessService])
    ], BusinessCreateListComponent);
    return BusinessCreateListComponent;
}());
export { BusinessCreateListComponent };
//# sourceMappingURL=business-create-list.component.js.map