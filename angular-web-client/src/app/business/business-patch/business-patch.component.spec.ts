import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { BusinessPatchComponent } from './business-patch.component';

describe('BusinessPatchComponent', () => {
  let component: BusinessPatchComponent;
  let fixture: ComponentFixture<BusinessPatchComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ BusinessPatchComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(BusinessPatchComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
