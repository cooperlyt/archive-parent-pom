import * as tslib_1 from "tslib";
import { Injectable } from '@angular/core';
import { environment } from '../../environments/environment';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { of } from "rxjs";
import { tap, share, map } from "rxjs/operators";
import { JwtHelperService } from '@auth0/angular-jwt';
var AuthenticationService = /** @class */ (function () {
    function AuthenticationService(_http) {
        this._http = _http;
    }
    AuthenticationService.prototype.obtainAccessToken = function (loginData) {
        var params = new URLSearchParams();
        params.append('username', loginData.username);
        params.append('password', loginData.password);
        params.append('grant_type', 'password');
        params.append('scope', 'webclient');
        var httpOptions = {
            headers: new HttpHeaders({ 'Content-type': 'application/x-www-form-urlencoded; charset=utf-8',
                'Authorization': 'Basic ' + btoa(environment.clientId + ":" + environment.clientPassword) })
        };
        return this._http.post(environment.apiUrl + "/auth/auth/oauth/token", params.toString(), httpOptions).pipe(tap(function (res) {
            localStorage.setItem('refresh_token', res.refresh_token);
            localStorage.setItem('access_token', res.access_token);
        }));
    };
    AuthenticationService.prototype.getAccessToken = function () {
        var token = localStorage.getItem('access_token');
        if (!token) {
            return of(null);
        }
        var helper = new JwtHelperService();
        var isTokenExpired = helper.isTokenExpired(token);
        var decodedToken = helper.decodeToken(token);
        if (!isTokenExpired) {
            return of(token);
        }
        return this.refreshToken();
    };
    AuthenticationService.prototype.isLoggedIn = function () {
        return this.getAccessToken().pipe(map(function (token) {
            return !!token;
        }));
    };
    AuthenticationService.prototype.refreshToken = function () {
        console.log("refresh token");
        var params = new URLSearchParams();
        params.append('refresh_token', localStorage.getItem('refresh_token'));
        params.append('grant_type', 'refresh_token');
        var httpOptions = {
            headers: new HttpHeaders({ 'Content-type': 'application/x-www-form-urlencoded; charset=utf-8',
                'Authorization': 'Basic ' + btoa(environment.clientId + ":" + environment.clientPassword) })
        };
        return this._http.post(environment.apiUrl + "/auth/auth/oauth/token", params.toString(), httpOptions).pipe(share(), map(function (res) {
            var token = res.access_token;
            localStorage.setItem('refresh_token', res.refresh_token);
            localStorage.setItem('access_token', token);
            return token;
        }));
    };
    AuthenticationService.prototype.logout = function () {
        //TODO notifly server destory token
        localStorage.clear();
    };
    AuthenticationService.prototype.getUserInfo = function () {
        return this.getAccessToken().pipe(map(function (res) {
            var helper = new JwtHelperService();
            return helper.decodeToken(res);
        }));
        //return this._http.get(`${environment.apiUrl}/auth/auth/user`);
    };
    AuthenticationService = tslib_1.__decorate([
        Injectable({
            providedIn: 'root'
        }),
        tslib_1.__metadata("design:paramtypes", [HttpClient])
    ], AuthenticationService);
    return AuthenticationService;
}());
export { AuthenticationService };
//# sourceMappingURL=authentication.service.js.map