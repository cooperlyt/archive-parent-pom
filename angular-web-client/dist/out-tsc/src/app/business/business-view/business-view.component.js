import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { faFile } from '@fortawesome/free-regular-svg-icons';
import { repo } from 'octicons';
import { DomSanitizer } from '@angular/platform-browser';
var BusinessViewComponent = /** @class */ (function () {
    function BusinessViewComponent(_route, sanitizer) {
        this._route = _route;
        this.sanitizer = sanitizer;
        this.faFile = faFile;
        this.repoIcon = repo.toSVG();
    }
    BusinessViewComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.repoIcon = this.sanitizer.bypassSecurityTrustHtml(repo.toSVG());
        this._route.data.subscribe(function (data) {
            _this.business = data.business;
        });
    };
    BusinessViewComponent = tslib_1.__decorate([
        Component({
            selector: 'app-business-view',
            templateUrl: './business-view.component.html',
            styleUrls: ['./business-view.component.scss']
        }),
        tslib_1.__metadata("design:paramtypes", [ActivatedRoute, DomSanitizer])
    ], BusinessViewComponent);
    return BusinessViewComponent;
}());
export { BusinessViewComponent };
//# sourceMappingURL=business-view.component.js.map