import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { AuthenticationService } from '../auth/authentication.service';
import { Router } from '@angular/router';
var NavbarComponent = /** @class */ (function () {
    function NavbarComponent(_service, _router) {
        this._service = _service;
        this._router = _router;
    }
    NavbarComponent.prototype.ngOnInit = function () {
        var _this = this;
        this._service.getUserInfo().subscribe(function (data) { return _this.user = data; });
    };
    NavbarComponent.prototype.logout = function () {
        this.user = null;
        this._service.logout();
        this._router.navigate(['/login']);
    };
    NavbarComponent = tslib_1.__decorate([
        Component({
            selector: 'app-navbar',
            templateUrl: './navbar.component.html',
            styleUrls: ['./navbar.component.scss']
        }),
        tslib_1.__metadata("design:paramtypes", [AuthenticationService, Router])
    ], NavbarComponent);
    return NavbarComponent;
}());
export { NavbarComponent };
//# sourceMappingURL=navbar.component.js.map