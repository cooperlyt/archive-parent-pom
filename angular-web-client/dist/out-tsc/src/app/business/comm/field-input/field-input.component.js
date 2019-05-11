import * as tslib_1 from "tslib";
import { Component, Input } from '@angular/core';
import { FormGroup } from '@angular/forms';
import { NgbDatepickerI18n } from '@ng-bootstrap/ng-bootstrap';
import { I18n, CustomDatepickerI18n } from '../../../comm/datepicker-i18n';
var FieldInputComponent = /** @class */ (function () {
    function FieldInputComponent() {
    }
    Object.defineProperty(FieldInputComponent.prototype, "fields", {
        get: function () {
            return this.formGroup.get('fieldDefines');
        },
        enumerable: true,
        configurable: true
    });
    FieldInputComponent.prototype.ngOnInit = function () {
    };
    FieldInputComponent.prototype.ngOnChanges = function (changes) {
    };
    FieldInputComponent.prototype.geterror = function (index) {
        return this.formGroup.get('fieldDefines').at(index).get('value').errors;
    };
    Object.defineProperty(FieldInputComponent.prototype, "isValid", {
        get: function () { return this.formGroup.get('fieldDefines').valid; },
        enumerable: true,
        configurable: true
    });
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", FormGroup)
    ], FieldInputComponent.prototype, "formGroup", void 0);
    FieldInputComponent = tslib_1.__decorate([
        Component({
            selector: 'app-field-input',
            templateUrl: './field-input.component.html',
            styleUrls: ['./field-input.component.scss'],
            providers: [I18n, { provide: NgbDatepickerI18n, useClass: CustomDatepickerI18n }]
        }),
        tslib_1.__metadata("design:paramtypes", [])
    ], FieldInputComponent);
    return FieldInputComponent;
}());
export { FieldInputComponent };
//# sourceMappingURL=field-input.component.js.map