import * as tslib_1 from "tslib";
import { Injectable, Injector } from "@angular/core";
import { throwError, EMPTY } from 'rxjs';
import { catchError, switchMap } from 'rxjs/operators';
import { AuthenticationService } from '../authentication.service';
import { Router } from '@angular/router';
var AuthInterceptor = /** @class */ (function () {
    function AuthInterceptor(injector, _router) {
        this.injector = injector;
        this._router = _router;
        this.inflightAuthRequest = null;
        this.blacklist = [
            /(((https?):\/\/|www\.)theinfogrid.com\/auth\/)/,
            'some-other-url-pattern',
            'some-other-pattern'
        ];
    }
    AuthInterceptor.prototype.blacklistCheckup = function ($url) {
        var returnValue = false;
        for (var _i = 0, _a = Object.keys(this.blacklist); _i < _a.length; _i++) {
            var i = _a[_i];
            if (this.blacklist[i].exec($url) !== null) {
                returnValue = true;
                break;
            }
        }
        return returnValue;
    };
    AuthInterceptor.prototype.intercept = function (request, next) {
        var _this = this;
        console.log(" Http Client AuthInterceptor ");
        //TODO use blacklist
        if (request.url.includes("oauth/token")) {
            return next.handle(request);
        }
        var authService = this.injector.get(AuthenticationService);
        if (!this.inflightAuthRequest) {
            this.inflightAuthRequest = authService.getAccessToken();
        }
        return this.inflightAuthRequest.pipe(switchMap(function (newToken) {
            // unset request inflight
            _this.inflightAuthRequest = null;
            if (!newToken) {
                console.log(" intercept no token ! go to login");
                //localStorage.clear();
                //this._router.navigate(['/login']);
                return EMPTY;
            }
            var authReq = request.clone({ headers: request.headers.set('Authorization', newToken ? 'Bearer ' + newToken : '') });
            if (!authReq.headers.has('Content-Type')) {
                authReq = authReq.clone({ headers: authReq.headers.set('Content-Type', 'application/json') });
            }
            authReq = authReq.clone({ headers: authReq.headers.set('Accept', 'application/json') });
            return next.handle(authReq);
        }), catchError(function (error) {
            // checks if a url is to an admin api or not
            if (error.status == 401) {
                //TODO get refresh token descript
                // check if the response is from the token refresh end point
                var isFromRefreshTokenEndpoint = !!error.headers.get('unableToRefreshToken');
                console.log(" http fail in 401");
                if (isFromRefreshTokenEndpoint) {
                    console.log(" refresh fail ! go to login");
                    localStorage.clear();
                    _this._router.navigate(['/login']);
                    return throwError(error);
                }
                if (!_this.inflightAuthRequest) {
                    console.log(" begin refresh token");
                    _this.inflightAuthRequest = authService.refreshToken();
                    if (!_this.inflightAuthRequest) {
                        // remove existing tokens
                        localStorage.clear();
                        _this._router.navigate(['/login']);
                        return throwError(error);
                    }
                }
                return _this.inflightAuthRequest.pipe(switchMap(function (newToken) {
                    // unset inflight request
                    _this.inflightAuthRequest = null;
                    console.log(" refresh complete req orig!");
                    // clone the original request
                    var authReqRepeat = request.clone({ headers: request.headers.set('Authorization', 'Bearer ' + newToken) });
                    // resend the request
                    return next.handle(authReqRepeat);
                }));
            }
            else {
                if (error.status == 403) {
                    //TODO message add not perm
                }
                return throwError(error);
            }
        }));
    };
    AuthInterceptor = tslib_1.__decorate([
        Injectable(),
        tslib_1.__metadata("design:paramtypes", [Injector, Router])
    ], AuthInterceptor);
    return AuthInterceptor;
}());
export { AuthInterceptor };
//# sourceMappingURL=auth.interceptor.js.map