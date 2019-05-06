import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { BusinessCreateListComponent } from './business-create-list.component';

describe('BusinessCreateListComponent', () => {
  let component: BusinessCreateListComponent;
  let fixture: ComponentFixture<BusinessCreateListComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ BusinessCreateListComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(BusinessCreateListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
