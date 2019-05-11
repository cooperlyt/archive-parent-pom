import { TestBed } from '@angular/core/testing';
import { CorpService } from './corp.service';
describe('CorpService', function () {
    beforeEach(function () { return TestBed.configureTestingModule({}); });
    it('should be created', function () {
        var service = TestBed.get(CorpService);
        expect(service).toBeTruthy();
    });
});
//# sourceMappingURL=corp.service.spec.js.map