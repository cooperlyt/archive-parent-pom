import * as tslib_1 from "tslib";
import { Injectable } from '@angular/core';
import { NgbDatepickerI18n } from '@ng-bootstrap/ng-bootstrap';
var I18N_VALUES = {
    en: {
        weekdays: ['Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa', 'Su'],
        months: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
    },
    fr: {
        weekdays: ['Lu', 'Ma', 'Me', 'Je', 'Ve', 'Sa', 'Di'],
        months: ['Jan', 'Fév', 'Mar', 'Avr', 'Mai', 'Juin', 'Juil', 'Aou', 'Sep', 'Oct', 'Nov', 'Déc'],
    },
    zn: {
        weekdays: ['一', '二', '三', '四', '五', '六', '七'],
        months: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月']
    }
};
var I18n = /** @class */ (function () {
    function I18n() {
        this.language = 'zn';
    }
    I18n = tslib_1.__decorate([
        Injectable()
    ], I18n);
    return I18n;
}());
export { I18n };
var CustomDatepickerI18n = /** @class */ (function (_super) {
    tslib_1.__extends(CustomDatepickerI18n, _super);
    function CustomDatepickerI18n(_i18n) {
        var _this = _super.call(this) || this;
        _this._i18n = _i18n;
        return _this;
    }
    CustomDatepickerI18n.prototype.getWeekdayShortName = function (weekday) {
        return I18N_VALUES[this._i18n.language].weekdays[weekday - 1];
    };
    CustomDatepickerI18n.prototype.getMonthShortName = function (month) {
        return I18N_VALUES[this._i18n.language].months[month - 1];
    };
    CustomDatepickerI18n.prototype.getMonthFullName = function (month) {
        return this.getMonthShortName(month);
    };
    CustomDatepickerI18n.prototype.getDayAriaLabel = function (date) {
        return date.year + "-" + date.month + "-" + date.day;
    };
    CustomDatepickerI18n = tslib_1.__decorate([
        Injectable(),
        tslib_1.__metadata("design:paramtypes", [I18n])
    ], CustomDatepickerI18n);
    return CustomDatepickerI18n;
}(NgbDatepickerI18n));
export { CustomDatepickerI18n };
//# sourceMappingURL=datepicker-i18n.js.map