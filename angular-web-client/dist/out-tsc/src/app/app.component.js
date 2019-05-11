import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { Title } from '@angular/platform-browser';
var AppComponent = /** @class */ (function () {
    function AppComponent(titleService) {
        this.titleService = titleService;
        this.title = '档案系统';
        titleService.setTitle(this.title);
    }
    AppComponent = tslib_1.__decorate([
        Component({
            selector: 'app-root',
            templateUrl: './app.component.html',
            styleUrls: ['./app.component.scss']
        }),
        tslib_1.__metadata("design:paramtypes", [Title])
    ], AppComponent);
    return AppComponent;
}());
export { AppComponent };
//# sourceMappingURL=app.component.js.map