import * as tslib_1 from "tslib";
import { Component, Input } from '@angular/core';
import { FormGroup } from '@angular/forms';
export var PERSON_CERTIFICATE_TYPE = {
    MASTER_ID: "身份证",
    SOLDIER_CARD: "士兵证",
    OFFICER_CARD: "军官证",
    PASSPORT: "护照",
    TW_ID: "台湾通行证",
    GA_ID: "港澳通行证",
    OTHER: "其它证件"
};
export var GROUP_CERTIFICATE_TYPE = {
    COMPANY_CODE: "营业执照",
    CORP_CODE: "机构代码证",
    RELIGIOUS_GROUP: "宗教组织证",
    OTHER: "其它证件"
};
var PersonInputComponent = /** @class */ (function () {
    function PersonInputComponent() {
    }
    PersonInputComponent.prototype.getArrayControl = function (i) {
        return this.form.get(this.formArray).at(i).get('value');
    };
    PersonInputComponent.prototype.typeControl = function () {
        return this.getArrayControl(0);
    };
    PersonInputComponent.prototype.numberControl = function () {
        return this.getArrayControl(1);
    };
    PersonInputComponent.prototype.nameControl = function () {
        return this.getArrayControl(2);
    };
    PersonInputComponent.prototype.ngOnInit = function () {
    };
    PersonInputComponent.prototype.ngOnChanges = function (changes) {
        if (changes['formArray']) {
        }
    };
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", FormGroup)
    ], PersonInputComponent.prototype, "form", void 0);
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", String)
    ], PersonInputComponent.prototype, "formArray", void 0);
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", String)
    ], PersonInputComponent.prototype, "fieldName", void 0);
    PersonInputComponent = tslib_1.__decorate([
        Component({
            selector: 'app-person-input',
            templateUrl: './person-input.component.html',
            styleUrls: ['./person-input.component.scss']
        }),
        tslib_1.__metadata("design:paramtypes", [])
    ], PersonInputComponent);
    return PersonInputComponent;
}());
export { PersonInputComponent };
//# sourceMappingURL=person-input.component.js.map