import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { VaildMessageComponent } from './vaild-message.component';

describe('VaildMessageComponent', () => {
  let component: VaildMessageComponent;
  let fixture: ComponentFixture<VaildMessageComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ VaildMessageComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(VaildMessageComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
