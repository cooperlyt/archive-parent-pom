import * as tslib_1 from "tslib";
import { Component, Input } from '@angular/core';
import { FormGroup } from '@angular/forms';
import { CorpService } from '../services/corp.service';
import { CORP_TYPE } from '../enumData';
var CorpSelectComponent = /** @class */ (function () {
    function CorpSelectComponent(_corpService) {
        this._corpService = _corpService;
        this.corpNoFoundText = "请选择公司类型";
        this.corpType = CORP_TYPE;
        this.typeList = Object.keys(CORP_TYPE).map(function (key) { return ({ id: key, name: CORP_TYPE[key] }); });
        this.corpList = [];
        this.load = false;
    }
    CorpSelectComponent.prototype.getTypeControl = function () {
        if (this.formArray) {
            return this.form.get(this.formArray).at(0).get("value");
        }
        else {
            return this.form.get(this.typeKey);
        }
    };
    CorpSelectComponent.prototype.getIdControl = function () {
        if (this.formArray) {
            return this.form.get(this.formArray).at(1).get("value");
        }
        else {
            return this.form.get(this.idKey);
        }
    };
    CorpSelectComponent.prototype.getNameControl = function () {
        if (this.formArray) {
            return this.form.get(this.formArray).at(2).get("value");
        }
        else {
            return this.form.get(this.nameKey);
        }
    };
    CorpSelectComponent.prototype.getTypeValue = function () {
        if (this.formArray) {
            return this.form.value[this.formArray][0]['value'];
        }
        else {
            return this.form.value[this.typeKey];
        }
    };
    CorpSelectComponent.prototype.typeChange = function (value) {
        var _this = this;
        if (value && (this.getTypeValue() != value)) {
            this.load = true;
            this.getIdControl().setValue("");
            this.getNameControl().setValue("");
            this.corpList = [];
            this.corpNoFoundText = '请选择公司类型';
            this._corpService.getCorpByType(value).subscribe(function (res) {
                _this.corpList = res;
                _this.load = false;
                _this.corpNoFoundText = '没有符合条件的选项';
            });
        }
        else if (!value) {
            this.getIdControl().setValue("");
            this.getNameControl().setValue("");
            this.corpList = [];
            this.corpNoFoundText = '请选择公司类型';
        }
    };
    CorpSelectComponent.prototype.corpChange = function (value) {
        if (value) {
            this.getNameControl().setValue(this.corpList.find(function (data) { return data.id === value; }).name);
        }
        else {
            this.getNameControl().setValue(null);
        }
    };
    CorpSelectComponent.prototype.ngOnChanges = function (changes) {
        var _this = this;
        if (changes['formArray']) {
            this.getTypeControl().valueChanges.subscribe(function (value) { return _this.typeChange(value); });
            this.getIdControl().valueChanges.subscribe(function (value) { return _this.corpChange(value); });
        }
        if (changes['typeKey']) {
            this.form.get(this.typeKey).valueChanges.subscribe(function (value) { return _this.typeChange(value); });
        }
        if (changes['idKey']) {
            this.form.get(this.idKey).valueChanges.subscribe(function (value) { return _this.corpChange(value); });
        }
    };
    CorpSelectComponent.prototype.ngOnInit = function () {
    };
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", FormGroup)
    ], CorpSelectComponent.prototype, "form", void 0);
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", String)
    ], CorpSelectComponent.prototype, "typeKey", void 0);
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", String)
    ], CorpSelectComponent.prototype, "idKey", void 0);
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", String)
    ], CorpSelectComponent.prototype, "nameKey", void 0);
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", String)
    ], CorpSelectComponent.prototype, "formArray", void 0);
    CorpSelectComponent = tslib_1.__decorate([
        Component({
            selector: 'app-corp-select',
            templateUrl: './corp-select.component.html',
            styleUrls: ['./corp-select.component.scss']
        }),
        tslib_1.__metadata("design:paramtypes", [CorpService])
    ], CorpSelectComponent);
    return CorpSelectComponent;
}());
export { CorpSelectComponent };
//# sourceMappingURL=corp-select.component.js.map