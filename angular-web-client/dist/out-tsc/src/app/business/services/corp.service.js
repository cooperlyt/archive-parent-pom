import * as tslib_1 from "tslib";
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from '../../../environments/environment';
var CorpService = /** @class */ (function () {
    function CorpService(_http) {
        this._http = _http;
    }
    CorpService.prototype.getCorpByType = function (type) {
        return this._http.get(environment.apiUrl + "/corp/v1/corp/summary/" + type);
    };
    CorpService = tslib_1.__decorate([
        Injectable({
            providedIn: 'root'
        }),
        tslib_1.__metadata("design:paramtypes", [HttpClient])
    ], CorpService);
    return CorpService;
}());
export { CorpService };
//# sourceMappingURL=corp.service.js.map