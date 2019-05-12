import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CorpSelectComponent } from './corp-select.component';

describe('CorpSelectComponent', () => {
  let component: CorpSelectComponent;
  let fixture: ComponentFixture<CorpSelectComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CorpSelectComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CorpSelectComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
