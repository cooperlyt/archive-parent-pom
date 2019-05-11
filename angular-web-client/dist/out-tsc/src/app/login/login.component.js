import * as tslib_1 from "tslib";
import { Component, ElementRef } from '@angular/core';
import { AuthenticationService } from '../auth/authentication.service';
import { Router } from '@angular/router';
import { catchError } from 'rxjs/operators';
import { EMPTY } from 'rxjs';
import { faCoins } from '@fortawesome/free-solid-svg-icons';
var LoginComponent = /** @class */ (function () {
    function LoginComponent(elementRef, _service, _router) {
        this.elementRef = elementRef;
        this._service = _service;
        this._router = _router;
        this.faCoins = faCoins;
        this.loginData = { username: "", password: "" };
        this.fail = false;
        this.loadding = false;
    }
    LoginComponent.prototype.ngOnInit = function () {
        this.fail = false;
    };
    LoginComponent.prototype.ngAfterViewInit = function () {
        this.elementRef.nativeElement.ownerDocument.body.style.backgroundColor = '#f9f9f9';
    };
    LoginComponent.prototype.ngOnDestroy = function () {
        this.elementRef.nativeElement.ownerDocument.body.style.backgroundColor = "#fff";
    };
    LoginComponent.prototype.closeAlert = function () {
        this.fail = false;
    };
    LoginComponent.prototype.login = function () {
        var _this = this;
        this.loadding = true;
        this._service.obtainAccessToken(this.loginData).pipe(catchError(function (err) {
            _this.fail = true;
            _this.loadding = false;
            return EMPTY;
        })).subscribe(function (_) { return _this._router.navigate(['']); });
    };
    LoginComponent = tslib_1.__decorate([
        Component({
            selector: 'app-login',
            templateUrl: './login.component.html',
            styleUrls: ['./login.component.scss']
        }),
        tslib_1.__metadata("design:paramtypes", [ElementRef, AuthenticationService, Router])
    ], LoginComponent);
    return LoginComponent;
}());
export { LoginComponent };
//# sourceMappingURL=login.component.js.map