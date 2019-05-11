import * as tslib_1 from "tslib";
import { Component, Input } from '@angular/core';
var VaildMessageComponent = /** @class */ (function () {
    function VaildMessageComponent() {
    }
    VaildMessageComponent.prototype.ngOnInit = function () {
    };
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", Object)
    ], VaildMessageComponent.prototype, "errors", void 0);
    VaildMessageComponent = tslib_1.__decorate([
        Component({
            selector: 'app-vaild-message',
            templateUrl: './vaild-message.component.html',
            styleUrls: ['./vaild-message.component.scss']
        }),
        tslib_1.__metadata("design:paramtypes", [])
    ], VaildMessageComponent);
    return VaildMessageComponent;
}());
export { VaildMessageComponent };
// export function FormatString(str: string, ...val: string[]) {
//   for (let index = 0; index < val.length; index++) {
//     str = str.replace(`{${index}}`, val[index]);
//   }
//   return str;
// }
//# sourceMappingURL=vaild-message.component.js.map