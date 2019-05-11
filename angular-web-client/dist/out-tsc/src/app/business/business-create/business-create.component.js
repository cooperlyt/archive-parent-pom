import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { BusinessService } from '../services/business.service';
import { catchError } from 'rxjs/operators';
import { EMPTY } from 'rxjs';
import { ToastrService } from 'ngx-toastr';
var BusinessCreateComponent = /** @class */ (function () {
    function BusinessCreateComponent(_route, _router, _businessService, toastr) {
        this._route = _route;
        this._router = _router;
        this._businessService = _businessService;
        this.toastr = toastr;
        this.saveing = false;
    }
    Object.defineProperty(BusinessCreateComponent.prototype, "fields", {
        get: function () {
            return this.form.get('fields');
        },
        enumerable: true,
        configurable: true
    });
    BusinessCreateComponent.prototype.ngOnInit = function () {
        var _this = this;
        this._route.data.subscribe(function (data) { _this.form = data.editor; console.log(_this.form.value); });
    };
    BusinessCreateComponent.prototype.onSubmit = function () {
        var _this = this;
        this.saveing = true;
        this._businessService.createBusiness(this.form.value).pipe(catchError(function (err) {
            _this.saveing = false;
            if (err.status < 500) {
                _this.toastr.error('不能连接到服务器，请稍后再试！', '服务错误!');
            }
            return EMPTY;
        })).subscribe(function (data) {
            _this.saveing = false;
            console.log("save success: " + data);
            if (data) {
                _this._router.navigate(["/business-file/" + data]);
            }
        });
    };
    BusinessCreateComponent = tslib_1.__decorate([
        Component({
            selector: 'app-business-create',
            templateUrl: './business-create.component.html',
            styleUrls: ['./business-create.component.scss']
        }),
        tslib_1.__metadata("design:paramtypes", [ActivatedRoute, Router, BusinessService, ToastrService])
    ], BusinessCreateComponent);
    return BusinessCreateComponent;
}());
export { BusinessCreateComponent };
//# sourceMappingURL=business-create.component.js.map