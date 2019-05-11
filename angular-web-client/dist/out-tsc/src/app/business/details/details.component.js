import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { CORP_TYPE, BusinessStatus } from '../enumData';
var RowFields = /** @class */ (function () {
    function RowFields(type, valueGroup, rowIndex) {
        this.type = type;
        this.valueGroup = valueGroup;
        this.rowIndex = rowIndex;
    }
    Object.defineProperty(RowFields.prototype, "singleValue", {
        get: function () {
            return this.valueGroup[0];
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(RowFields.prototype, "fields", {
        get: function () {
            var result = [];
            this.valueGroup.forEach(function (data) { return result = result.concat(data.fieldDefines); });
            return result;
        },
        enumerable: true,
        configurable: true
    });
    return RowFields;
}());
export { RowFields };
var DetailsComponent = /** @class */ (function () {
    function DetailsComponent(_route) {
        this._route = _route;
        this.corpType = CORP_TYPE;
        this.businessStatus = BusinessStatus;
        this.fields = [];
    }
    DetailsComponent.prototype.ngOnInit = function () {
        var _this = this;
        this._route.data.subscribe(function (data) {
            _this.business = data.business;
            var fieldSimple = {};
            data.fields.forEach(function (item) {
                var f = fieldSimple[item.row];
                if (item.type === 'SIMPLE' || f) {
                    if (f) {
                        console.log("push SIMPLE item:", item.name);
                        f.push(item);
                    }
                    else {
                        fieldSimple[item.row] = [item];
                    }
                }
                else {
                    console.log("push " + item.type + " item:", item.name);
                    _this.fields.push(new RowFields(item.type, [item], item.row));
                }
            });
            Object.entries(fieldSimple).forEach(function (_a) {
                var key = _a[0], value = _a[1];
                _this.fields.push(new RowFields('SIMPLE', fieldSimple[key], +key));
            });
            _this.fields = _this.fields.sort(function (a, b) {
                return a.rowIndex == b.rowIndex ? 0 : (a.rowIndex < b.rowIndex ? -1 : 1);
            });
        });
    };
    DetailsComponent = tslib_1.__decorate([
        Component({
            selector: 'app-details',
            templateUrl: './details.component.html',
            styleUrls: ['./details.component.scss']
        }),
        tslib_1.__metadata("design:paramtypes", [ActivatedRoute])
    ], DetailsComponent);
    return DetailsComponent;
}());
export { DetailsComponent };
//# sourceMappingURL=details.component.js.map