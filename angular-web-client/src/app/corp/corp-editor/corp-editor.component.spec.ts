import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CorpEditorComponent } from './corp-editor.component';

describe('CorpEditorComponent', () => {
  let component: CorpEditorComponent;
  let fixture: ComponentFixture<CorpEditorComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CorpEditorComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CorpEditorComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
