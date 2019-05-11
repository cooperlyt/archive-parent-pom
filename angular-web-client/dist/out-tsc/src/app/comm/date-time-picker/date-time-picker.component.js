import * as tslib_1 from "tslib";
import { Component, Input, ViewChild, Injector, forwardRef } from '@angular/core';
import { DatePipe } from '@angular/common';
import { NG_VALUE_ACCESSOR, NgControl } from '@angular/forms';
import { DateTimeModel } from './date-time.model';
import { NgbDatepicker, NgbPopover, NgbPopoverConfig } from '@ng-bootstrap/ng-bootstrap';
import { noop } from 'rxjs';
var DateTimePickerComponent = /** @class */ (function () {
    function DateTimePickerComponent(config, inj) {
        this.config = config;
        this.inj = inj;
        this.inputDatetimeFormat = 'yyyy-M-d H:mm:ss';
        this.hourStep = 1;
        this.minuteStep = 15;
        this.secondStep = 30;
        this.seconds = true;
        this.disabled = false;
        this.showTimePickerToggle = false;
        this.datetime = new DateTimeModel();
        this.firstTimeAssign = true;
        this.onTouched = noop;
        this.onChange = noop;
        config.autoClose = 'outside';
        config.placement = 'auto';
    }
    DateTimePickerComponent_1 = DateTimePickerComponent;
    Object.defineProperty(DateTimePickerComponent.prototype, "isEditTime", {
        get: function () {
            return (this.inputDatetimeFormat.indexOf("H") >= 0);
        },
        enumerable: true,
        configurable: true
    });
    DateTimePickerComponent.prototype.ngOnInit = function () {
        this.ngControl = this.inj.get(NgControl);
    };
    DateTimePickerComponent.prototype.ngAfterViewInit = function () {
        var _this = this;
        this.popover.hidden.subscribe(function ($event) {
            _this.showTimePickerToggle = false;
        });
    };
    DateTimePickerComponent.prototype.writeValue = function (newModel) {
        if (newModel) {
            this.datetime = Object.assign(this.datetime, DateTimeModel.fromLocalString(newModel));
            this.dateString = newModel;
            this.setDateStringModel();
        }
        else {
            this.datetime = new DateTimeModel();
        }
    };
    DateTimePickerComponent.prototype.registerOnChange = function (fn) {
        this.onChange = fn;
    };
    DateTimePickerComponent.prototype.registerOnTouched = function (fn) {
        this.onTouched = fn;
    };
    DateTimePickerComponent.prototype.toggleDateTimeState = function ($event) {
        this.showTimePickerToggle = !this.showTimePickerToggle;
        $event.stopPropagation();
    };
    DateTimePickerComponent.prototype.setDisabledState = function (isDisabled) {
        this.disabled = isDisabled;
    };
    DateTimePickerComponent.prototype.onInputChange = function ($event) {
        var value = $event.target.value;
        var dt = DateTimeModel.fromLocalString(value);
        if (dt) {
            this.datetime = dt;
            this.setDateStringModel();
        }
        else if (value.trim() === '') {
            this.datetime = new DateTimeModel();
            this.dateString = '';
            this.onChange(this.dateString);
        }
        else {
            this.onChange(value);
        }
    };
    DateTimePickerComponent.prototype.onDateChange = function ($event) {
        var value;
        if (typeof $event === "string") {
            value = $event;
        }
        else {
            value = $event.year + "-" + $event.month + "-" + $event.day;
        }
        var date = DateTimeModel.fromLocalString(value);
        if (!date) {
            this.dateString = this.dateString;
            return;
        }
        if (!this.datetime) {
            this.datetime = date;
        }
        this.datetime.year = date.year;
        this.datetime.month = date.month;
        this.datetime.day = date.day;
        this.dp.navigateTo({ year: this.datetime.year, month: this.datetime.month });
        this.setDateStringModel();
    };
    DateTimePickerComponent.prototype.onTimeChange = function (event) {
        this.datetime.hour = event.hour;
        this.datetime.minute = event.minute;
        this.datetime.second = event.second;
        this.setDateStringModel();
    };
    DateTimePickerComponent.prototype.setDateStringModel = function () {
        this.dateString = this.datetime.toString();
        /** first set form very is fail so remove this code! */
        //   if (!this.firstTimeAssign) {
        //       this.onChange(this.dateString);
        //   } else {
        //       // Skip very first assignment to null done by Angular
        //       if (this.dateString !== null) {
        //           this.firstTimeAssign = false;
        //       }
        //   }
        this.onChange(this.dateString);
    };
    DateTimePickerComponent.prototype.inputBlur = function ($event) {
        this.onTouched();
    };
    var DateTimePickerComponent_1;
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", String)
    ], DateTimePickerComponent.prototype, "dateString", void 0);
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", Object)
    ], DateTimePickerComponent.prototype, "inputDatetimeFormat", void 0);
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", Object)
    ], DateTimePickerComponent.prototype, "hourStep", void 0);
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", Object)
    ], DateTimePickerComponent.prototype, "minuteStep", void 0);
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", Object)
    ], DateTimePickerComponent.prototype, "secondStep", void 0);
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", Object)
    ], DateTimePickerComponent.prototype, "seconds", void 0);
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", Object)
    ], DateTimePickerComponent.prototype, "disabled", void 0);
    tslib_1.__decorate([
        ViewChild(NgbDatepicker),
        tslib_1.__metadata("design:type", NgbDatepicker)
    ], DateTimePickerComponent.prototype, "dp", void 0);
    tslib_1.__decorate([
        ViewChild(NgbPopover),
        tslib_1.__metadata("design:type", NgbPopover)
    ], DateTimePickerComponent.prototype, "popover", void 0);
    DateTimePickerComponent = DateTimePickerComponent_1 = tslib_1.__decorate([
        Component({
            selector: 'app-date-time-picker',
            templateUrl: './date-time-picker.component.html',
            styleUrls: ['./date-time-picker.component.scss'],
            providers: [
                DatePipe,
                {
                    provide: NG_VALUE_ACCESSOR,
                    useExisting: forwardRef(function () { return DateTimePickerComponent_1; }),
                    multi: true
                }
            ]
        }),
        tslib_1.__metadata("design:paramtypes", [NgbPopoverConfig, Injector])
    ], DateTimePickerComponent);
    return DateTimePickerComponent;
}());
export { DateTimePickerComponent };
//# sourceMappingURL=date-time-picker.component.js.map