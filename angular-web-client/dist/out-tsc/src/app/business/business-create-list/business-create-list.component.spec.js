import { async, TestBed } from '@angular/core/testing';
import { BusinessCreateListComponent } from './business-create-list.component';
describe('BusinessCreateListComponent', function () {
    var component;
    var fixture;
    beforeEach(async(function () {
        TestBed.configureTestingModule({
            declarations: [BusinessCreateListComponent]
        })
            .compileComponents();
    }));
    beforeEach(function () {
        fixture = TestBed.createComponent(BusinessCreateListComponent);
        component = fixture.componentInstance;
        fixture.detectChanges();
    });
    it('should create', function () {
        expect(component).toBeTruthy();
    });
});
//# sourceMappingURL=business-create-list.component.spec.js.map