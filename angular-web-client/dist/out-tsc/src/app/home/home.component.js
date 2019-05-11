import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { AuthenticationService } from '../auth/authentication.service';
import { faUser } from '@fortawesome/free-solid-svg-icons';
import { BusinessService } from '../business/services/business.service';
import { BusinessStatus, OperationType } from '../business/enumData';
var HomeComponent = /** @class */ (function () {
    function HomeComponent(_service, _businessService) {
        this._service = _service;
        this._businessService = _businessService;
        this.faUser = faUser;
        this.businessStatus = BusinessStatus;
        this.operationType = OperationType;
    }
    HomeComponent.prototype.ngOnInit = function () {
        var _this = this;
        this._service.getUserInfo().subscribe(function (data) { return _this.user = data; });
        this._businessService.getTopBusiness().subscribe(function (data) { return _this.topBusiness = data; });
    };
    HomeComponent = tslib_1.__decorate([
        Component({
            selector: 'app-home',
            templateUrl: './home.component.html',
            styleUrls: ['./home.component.scss']
        }),
        tslib_1.__metadata("design:paramtypes", [AuthenticationService, BusinessService])
    ], HomeComponent);
    return HomeComponent;
}());
export { HomeComponent };
//# sourceMappingURL=home.component.js.map