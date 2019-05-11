import * as tslib_1 from "tslib";
import { Injectable } from "@angular/core";
import { throwError, EMPTY } from 'rxjs';
import { catchError } from 'rxjs/operators';
import { ToastrService } from 'ngx-toastr';
var ServerErrorInterceptor = /** @class */ (function () {
    function ServerErrorInterceptor(toastr) {
        this.toastr = toastr;
    }
    ServerErrorInterceptor.prototype.intercept = function (req, next) {
        var _this = this;
        return next.handle(req).pipe(catchError(function (err) {
            if ((err.status >= 500) && (err.status < 600)) {
                console.log("http error:", err);
                _this.toastr.error('不能连接到服务器，请稍后再试！', '服务错误!');
                return EMPTY;
            }
            else
                return throwError(err);
        }));
    };
    ServerErrorInterceptor = tslib_1.__decorate([
        Injectable(),
        tslib_1.__metadata("design:paramtypes", [ToastrService])
    ], ServerErrorInterceptor);
    return ServerErrorInterceptor;
}());
export { ServerErrorInterceptor };
//# sourceMappingURL=server-error.interceptor.js.map