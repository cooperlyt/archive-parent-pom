import { Component, OnInit, ViewChild, AfterViewInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Business } from '../model/business.model';
import { faFile } from '@fortawesome/free-regular-svg-icons';
import { repo } from 'octicons';
import { DomSanitizer } from '@angular/platform-browser';
import { FileGalleryComponent } from '../file-gallery/file-gallery.component';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { BusinessService } from '../services/business.service';
import { catchError } from 'rxjs/operators';
import { EMPTY } from 'rxjs';
import { ToastrService } from 'ngx-toastr';


@Component({
  selector: 'app-business-view',
  templateUrl: './business-view.component.html',
  styleUrls: ['./business-view.component.scss']
})
export class BusinessViewComponent implements OnInit {


  constructor(private _route: ActivatedRoute,
    private sanitizer: DomSanitizer,
    private modalService: NgbModal, 
    private router: Router, 
    private businessService: BusinessService,
    private toastr: ToastrService) { }

  business:Business;
  fileCount: number;

  faFile = faFile;
  repoIcon = repo.toSVG();

  inputBusinessId:string;
  loadding :boolean = false;

  rejectExplain:string;

  get canComplete():boolean{
    return (this.business.status === 'CREATED') || (this.business.status === 'RUNNING')
  }

  get canRecord():boolean{
    return this.business.status === 'COMPLETE'
  }

  get isInputBusinessId():boolean{
    return this.inputBusinessId === this.business.id;
  }

  openModal(content) {
    this.rejectExplain = null;
    this.modalService.open(content);
  }

  rejectBusiness(){
    this.loadding = true;
    this.businessService.rejectBusiness(this.business.id,this.rejectExplain).subscribe(_ => {
      this.loadding = false;
      this.business.status = 'REJECT';
      this.modalService.dismissAll();
    })
  }

  deleteBusiness(){
    this.loadding = true;
    this.businessService.deleteBusiness(this.business.id).pipe(
      catchError(err => {
        this.loadding=false;
        this.toastr.error("未能删除业务！");
        return EMPTY;
      })
    ).subscribe(id => 
      {
        this.modalService.dismissAll();
        this.toastr.info(`业务${id}已删除！`);
        this.router.navigate(["/"]);
       
      })
  }


  ngOnInit() {
    this.repoIcon = this.sanitizer.bypassSecurityTrustHtml(repo.toSVG());
    this._route.data.subscribe((data: {business: Business}) => {
      this.business = data.business;
    });
    
  }

}
