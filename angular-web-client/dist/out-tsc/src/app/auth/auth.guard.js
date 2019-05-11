import * as tslib_1 from "tslib";
import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { AuthenticationService } from './authentication.service';
import { map, take } from 'rxjs/operators';
var AuthGuard = /** @class */ (function () {
    function AuthGuard(_authService, _router) {
        this._authService = _authService;
        this._router = _router;
    }
    AuthGuard.prototype.canActivate = function (next, state) {
        var _this = this;
        return this._authService.isLoggedIn().pipe(take(1), map(function (isLoggedIn) {
            if (!isLoggedIn) {
                console.log(" route not logger! go to login");
                _this._router.navigate(['/login']);
                return false;
            }
            return true;
        }));
    };
    AuthGuard = tslib_1.__decorate([
        Injectable({
            providedIn: 'root'
        }),
        tslib_1.__metadata("design:paramtypes", [AuthenticationService,
            Router])
    ], AuthGuard);
    return AuthGuard;
}());
export { AuthGuard };
//# sourceMappingURL=auth.guard.js.map