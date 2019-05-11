import * as tslib_1 from "tslib";
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from '../../../environments/environment';
import { map } from "rxjs/operators";
import { FormGroup, FormControl, FormArray, Validators } from '@angular/forms';
import { genUUID } from '../../comm/uuid';
import { DateTimeValidator } from '../../comm/data-time.validator';
import { genBusinessSearchKey } from '../custom-component';
var BusinessService = /** @class */ (function () {
    function BusinessService(_http) {
        this._http = _http;
    }
    BusinessService.prototype.listOperation = function (id) {
        return this._http.get(environment.apiUrl + "/business/v1/business/operations/" + id);
    };
    BusinessService.prototype.getBusiness = function (id) {
        return this._http.get(environment.apiUrl + "/business/v1/business/" + id);
    };
    BusinessService.prototype.getBusinessFields = function (id) {
        return this._http.get(environment.apiUrl + "/business/v1/business/field/" + id);
    };
    BusinessService.prototype.getVolumeContext = function (id) {
        return this._http.get(environment.apiUrl + "/business/v1/business/context/" + id).pipe(map(function (data) {
            return data.sort(function (c1, c2) {
                return (c1.ordinal == c2.ordinal) ? 0 : (c1.ordinal < c2.ordinal ? -1 : 1);
            });
        }));
    };
    BusinessService.prototype.deleteVolumeContext = function (id) {
        return this._http.delete(environment.apiUrl + "/business/v1/business/content/delete/" + id).pipe(
        //tap(data => {this._http.delete(`${environment.fileUrl}/`)}),
        map(function (data) { return data.id; }));
    };
    BusinessService.prototype.clearVolumeContext = function (id) {
        return this._http.delete(environment.apiUrl + "/business/v1/business/content/clear/" + id).pipe(map(function (data) { return data.count; }));
    };
    BusinessService.prototype.updateVolumeContexts = function (businessId, context) {
        return this._http.put(environment.apiUrl + "/business/v1/business/content/all/" + businessId, context).pipe(map(function (data) { return data.count; }));
    };
    BusinessService.prototype.listDefineSummary = function () {
        return this._http.get(environment.apiUrl + "/template/v1/mine");
    };
    BusinessService.prototype.getBusinessDefine = function (id) {
        return this._http.get(environment.apiUrl + "/template/v1/define/" + id);
    };
    BusinessService.prototype.getTopBusiness = function () {
        return this._http.get(environment.apiUrl + "/business/v1/list/top");
    };
    BusinessService.prototype.createBusiness = function (business) {
        genBusinessSearchKey(business);
        return this._http.post(environment.apiUrl + "/business/v1/new", business).pipe(map(function (data) { return data.id; }));
    };
    BusinessService.prototype.putVolumeContext = function (context, businessId) {
        return this._http.put(environment.apiUrl + "/business/v1/business/context/" + businessId, context).pipe(map(function (data) { return data.id; }));
    };
    BusinessService.prototype.newFieldControl = function (groupDefine, fieldDefine, value) {
        var valids = [];
        if (fieldDefine.option) {
            switch (groupDefine.type) {
                case 'SIMPLE': {
                    if (!fieldDefine.option.nullable) {
                        valids.push(Validators.required);
                    }
                    if (fieldDefine.option.min) {
                        valids.push(Validators.min(fieldDefine.option.min));
                    }
                    if (fieldDefine.option.minLength) {
                        valids.push(Validators.minLength(fieldDefine.option.minLength));
                    }
                    if (fieldDefine.option.max) {
                        valids.push(Validators.max(fieldDefine.option.max));
                    }
                    if (fieldDefine.option.maxLength) {
                        valids.push(Validators.maxLength(fieldDefine.option.maxLength));
                    }
                    if (fieldDefine.option.editPattern) {
                        valids.push(Validators.pattern(fieldDefine.option.editPattern));
                    }
                    if (fieldDefine.option.controlType === 'datepicker') {
                        valids.push(DateTimeValidator);
                    }
                    break;
                }
                case 'TEXT_AREA': {
                    if (!groupDefine.option.nullable) {
                        valids.push(Validators.required);
                    }
                    break;
                }
            }
        }
        if (valids.length === 0) {
            return new FormControl(value);
        }
        else if (valids.length === 1) {
            return new FormControl(value, valids[0]);
        }
        else {
            return new FormControl(value, Validators.compose(valids));
        }
    };
    BusinessService.prototype.newGroupFormControl = function (controls, groupDefine) {
        var _this = this;
        var valids = [];
        switch (groupDefine.type) {
            case 'CONSTRUCT_CORP': {
                for (var i = 0; i < 3; i++) {
                    controls['fieldDefines'].push(new FormGroup({
                        value: ((i === 1) && groupDefine.option && !groupDefine.option.nullable) ? new FormControl(null, Validators.required) : new FormControl(null),
                        ordinal: new FormControl(i),
                    }));
                }
                break;
            }
            default: {
                groupDefine.fieldDefines = groupDefine.fieldDefines.sort(function (f1, f2) { return (f1.ordinal == f2.ordinal) ? 0 : (f1.ordinal < f2.ordinal ? -1 : 1); });
                groupDefine.fieldDefines.forEach(function (field) {
                    var fieldDefine = new FormGroup({
                        pattern: new FormControl((field.option && field.option.viewPattern) ? field.option.viewPattern : null),
                        value: _this.newFieldControl(groupDefine, field),
                        label: new FormControl((field.option && field.option.label) ? field.option.label : null),
                        ordinal: new FormControl(field.ordinal),
                        option: new FormControl(field.option)
                    });
                    controls['fieldDefines'].push(fieldDefine);
                });
            }
        }
        if (valids.length === 0) {
            return new FormGroup(controls);
        }
        else if (valids.length === 1) {
            return new FormGroup(controls, valids[0]);
        }
        else {
            return new FormGroup(controls, Validators.compose(valids));
        }
    };
    BusinessService.prototype.createNewBusiness = function (id) {
        var _this = this;
        return this._http.get(environment.apiUrl + "/template/v1/define/" + id).pipe(map(function (define) {
            var result = new FormGroup({
                id: new FormControl(null),
                defineId: new FormControl(define.id),
                defineName: new FormControl(define.businessCategory.name + "/" + define.name),
                defineVersion: new FormControl(define.defineVersion),
                deliver: new FormControl(null),
                deliverId: new FormControl(null, Validators.required),
                receiveDate: new FormControl(new Date(), Validators.required),
                memo: new FormControl(null),
                summary: new FormControl(define.summary),
                status: new FormControl('CREATED'),
                source: new FormControl("INPUT"),
                version: new FormControl(1),
                corpType: new FormControl(null, Validators.required),
                fields: new FormArray([])
            });
            var fields = define.fields.sort(function (f1, f2) {
                return (f1.editorOrdinal == f2.editorOrdinal) ? 0 : (f1.editorOrdinal < f2.editorOrdinal ? -1 : 1);
            });
            fields.forEach(function (group) {
                var fieldGroup = _this.newGroupFormControl({
                    id: new FormControl(genUUID()),
                    name: new FormControl(group.name),
                    type: new FormControl(group.type),
                    ordinal: new FormControl(group.editorOrdinal),
                    row: new FormControl(group.viewRow),
                    define: new FormControl(group.id),
                    option: new FormControl(group.option),
                    fieldDefines: new FormArray([])
                }, group);
                result.get('fields').push(fieldGroup);
            });
            return result;
        }));
    };
    BusinessService = tslib_1.__decorate([
        Injectable({
            providedIn: 'root'
        }),
        tslib_1.__metadata("design:paramtypes", [HttpClient])
    ], BusinessService);
    return BusinessService;
}());
export { BusinessService };
//# sourceMappingURL=business.service.js.map