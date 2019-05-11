import * as tslib_1 from "tslib";
import { Component, ElementRef, ViewChild, HostListener } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { FileUploader } from 'ng2-file-upload/ng2-file-upload';
import { environment } from '../../../environments/environment';
import { FormBuilder, Validators } from '@angular/forms';
import { faBook } from '@fortawesome/free-solid-svg-icons';
import { repo, x } from 'octicons';
import { DomSanitizer } from '@angular/platform-browser';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { BusinessService } from '../services/business.service';
import { catchError } from 'rxjs/operators';
import { EMPTY, Subscription } from 'rxjs';
import { faAngleDown, faAngleUp } from '@fortawesome/free-solid-svg-icons';
import { faFile } from '@fortawesome/free-regular-svg-icons';
import { DragulaService } from 'ng2-dragula';
import { IMAGEVIEWER_CONFIG, createButtonConfig } from '@hallysonh/ngx-imageviewer';
var MY_IMAGEVIEWER_CONFIG = {
    buttonStyle: {
        bgStyle: '#B71C1C' // custom container's background style
    },
    width: 766,
    height: 600,
    nextPageButton: createButtonConfig('navigate_next', '下一页', 0),
    beforePageButton: createButtonConfig('navigate_before', '上一页', 1),
    zoomInButton: createButtonConfig('zoom_in', '放大', 0),
    zoomOutButton: createButtonConfig('zoom_out', '缩小', 1),
    rotateLeftButton: createButtonConfig('rotate_left', '左转', 2),
    rotateRightButton: createButtonConfig('rotate_right', '右转', 3),
    resetButton: createButtonConfig('autorenew', '还原', 4),
};
var VolumeContextUploadItem = /** @class */ (function () {
    function VolumeContextUploadItem(control, index) {
        this.control = control;
        this.index = index;
    }
    Object.defineProperty(VolumeContextUploadItem.prototype, "isReady", {
        get: function () {
            if (this.item) {
                return this.item.isReady && this.control.valid;
            }
            return false;
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(VolumeContextUploadItem.prototype, "isUploading", {
        get: function () {
            if (this.item) {
                return this.item.isUploading || !!this.fid;
            }
            return false;
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(VolumeContextUploadItem.prototype, "isUploaded", {
        get: function () {
            if (this.item) {
                return this.item.isUploaded;
            }
            return true;
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(VolumeContextUploadItem.prototype, "isSuccess", {
        get: function () {
            if (this.item) {
                return !!this.volume && this.item.isSuccess;
            }
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(VolumeContextUploadItem.prototype, "isCancel", {
        get: function () {
            if (this.item) {
                return this.item.isCancel;
            }
            return false;
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(VolumeContextUploadItem.prototype, "isError", {
        get: function () {
            if (this.item) {
                return this.item.isError;
            }
            return false;
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(VolumeContextUploadItem.prototype, "progress", {
        get: function () {
            if (this.item) {
                if (this.volume) {
                    return this.item.progress;
                }
                return this.item.progress - 5;
            }
            else {
                return 0;
            }
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(VolumeContextUploadItem.prototype, "fileType", {
        get: function () {
            if (this.item) {
                return this.item.file.type;
            }
            else {
                return this.volume.type;
            }
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(VolumeContextUploadItem.prototype, "isImage", {
        get: function () {
            return this.fileType.startsWith("image");
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(VolumeContextUploadItem.prototype, "isPdf", {
        get: function () {
            return this.fileType == 'application/pdf';
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(VolumeContextUploadItem.prototype, "imageThumb", {
        get: function () {
            return environment.fileUrl + "/img/100x100s/" + this.volume.id;
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(VolumeContextUploadItem.prototype, "previewSource", {
        get: function () {
            if (this.volume) {
                if (this.isImage) {
                    return environment.fileUrl + "/img/orig/" + this.volume.id + "." + this.fileType.substr(this.fileType.indexOf('/') + 1);
                }
                else if (this.isPdf) {
                    console.log('view pdf:', environment.fileUrl + "/pdf/" + this.volume.id + ".pdf");
                    return environment.fileUrl + "/pdf/" + this.volume.id + ".pdf";
                }
            }
            else if (this.isImage || this.isPdf) {
                return this.item._file;
            }
            return null;
        },
        enumerable: true,
        configurable: true
    });
    return VolumeContextUploadItem;
}());
export { VolumeContextUploadItem };
var FileUploadComponent = /** @class */ (function () {
    function FileUploadComponent(_route, elementRef, sanitizer, _modalService, fb, businessServer, dragulaService) {
        var _this = this;
        this._route = _route;
        this.elementRef = elementRef;
        this.sanitizer = sanitizer;
        this._modalService = _modalService;
        this.fb = fb;
        this.businessServer = businessServer;
        this.dragulaService = dragulaService;
        this.faAngleDown = faAngleDown;
        this.faAngleUp = faAngleUp;
        this.faFile = faFile;
        this.faBook = faBook;
        this.repoIcon = repo.toSVG();
        this.xIcon = x.toSVG();
        this.saveing = false;
        this.i = 0;
        this.subs = new Subscription();
        this.formBind = [];
        this._canvasDim = { width: 766, height: 600 };
        //TODO oauth toke
        this.uploader = new FileUploader({ url: environment.fileUrl + "/upload/",
            method: "PUT",
            isHTML5: true,
            // authTokenHeader: "Authorization",
            // authToken: "Bearer " + localStorage.getItem('access_token'),
            itemAlias: 'uploadedfile',
            // allowedMimeType: ['image/png', 'image/jpg', 'image/jpeg'],
            // maxFileSize: 10*1024*1024 * 1024,// 100 MB
            headers: [
                { name: "Accept", value: "application/json" }
            ]
        });
        dragulaService.createGroup("SPILL", {
            removeOnSpill: false
        });
        this.subs.add(this.dragulaService.dropModel("SPILL")
            // WHOA
            // .subscribe(({ name, el, target, source, sibling, sourceModel, targetModel, item }) => {
            .subscribe(function (_a) {
            var sourceModel = _a.sourceModel, targetModel = _a.targetModel, item = _a.item;
            var index;
            for (var i = 0; i < targetModel.length; i++) {
                if (targetModel[i] == item) {
                    index = i;
                    break;
                }
            }
            var reset = false;
            var ordinal;
            if (index === 0) {
                ordinal = targetModel[index + 1].control.value.ordinal - 100000;
                reset = ordinal <= -2147483648;
            }
            else if (index === (targetModel.length - 1)) {
                ordinal = targetModel[index - 1].control.value.ordinal + 100000;
                reset = ordinal >= 2147483647;
            }
            else {
                ordinal = ((targetModel[index + 1].control.value.ordinal - targetModel[index - 1].control.value.ordinal) / 2 | 0) + targetModel[index - 1].control.value.ordinal;
                reset = (ordinal >= targetModel[index + 1].control.value.ordinal) || (ordinal <= targetModel[index - 1].control.value.ordinal);
            }
            index = 0;
            if (reset) {
                var values_1 = [];
                targetModel.forEach(function (data) {
                    index += 100000;
                    data.control.get('ordinal').setValue(index);
                    if (data.volume) {
                        data.volume.ordinal = index;
                    }
                    values_1.push(data.control.value);
                });
                _this.saveing = true;
                _this.businessServer.updateVolumeContexts(_this.business.id, values_1).subscribe(function (_) { return _this.saveing = false; });
            }
            else {
                item.control.get('ordinal').setValue(ordinal);
                if (item.volume) {
                    item.volume.ordinal = ordinal;
                }
                _this.saveing = true;
                _this.businessServer.putVolumeContext(item.control.value, _this.business.id).subscribe(function (_) { return _this.saveing = false; });
            }
            console.log("item index:", index);
        }));
    }
    Object.defineProperty(FileUploadComponent.prototype, "canvasDim", {
        get: function () {
            return this._canvasDim;
        },
        enumerable: true,
        configurable: true
    });
    FileUploadComponent.prototype.updateCanvasDim = function () {
        var _this = this;
        var el = this.wrapper && this.wrapper.nativeElement ? this.wrapper.nativeElement : null;
        if (el && (el.offsetWidth !== this._canvasDim.width || el.offsetHeight !== this._canvasDim.height)) {
            var newDim_1 = { width: el.offsetWidth - 2, height: el.offsetHeight - 2 };
            console.log("resize:", el.offsetWidth);
            setTimeout(function () { return _this._canvasDim = newDim_1; }, 0);
        }
    };
    FileUploadComponent.prototype.onResize = function (event) {
        this.updateCanvasDim();
    };
    Object.defineProperty(FileUploadComponent.prototype, "waitUpdateCount", {
        get: function () {
            var result = 0;
            this.formBind.forEach(function (bind) {
                if (bind.item && !bind.volume) {
                    if (bind.control.valid && !bind.isUploaded && !bind.isSuccess) {
                        result++;
                    }
                }
            });
            return result;
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(FileUploadComponent.prototype, "cancelCount", {
        get: function () {
            var result = 0;
            this.formBind.forEach(function (bind) {
                if (bind.item && !bind.volume) {
                    if (bind.isUploaded) {
                        result++;
                    }
                }
            });
            return result;
        },
        enumerable: true,
        configurable: true
    });
    FileUploadComponent.prototype.getBindByItem = function (fileItem) {
        var result = null;
        this.formBind.forEach(function (bind) {
            if (bind.item == fileItem) {
                result = bind;
                return;
            }
        });
        return result;
    };
    FileUploadComponent.prototype.getBindByIndex = function (index) {
        var result = null;
        this.formBind.forEach(function (data) {
            if (data.index === index) {
                result = data;
                return;
            }
        });
        return result;
    };
    FileUploadComponent.prototype.getNewOrdinal = function () {
        var result = 0;
        this.formBind.forEach(function (data) {
            if (data.control.value.ordinal > result) {
                result = data.control.value.ordinal;
            }
        });
        return result + 100000;
    };
    FileUploadComponent.prototype.openActionModal = function (index, content, action) {
        this.selectItem = this.getBindByIndex(index);
        var option = {};
        if (action == 'edit') {
            option = { backdrop: 'static' };
        }
        else if (option = 'preview') {
            if (this.selectItem.isPdf || this.selectItem.isImage) {
                option = { size: 'lg' };
            }
            else {
                return;
            }
        }
        this.saveing = false;
        this._modalService.open(content, option);
    };
    FileUploadComponent.prototype.deleteAllConfirme = function (content) {
        this.saveing = false;
        this._modalService.open(content);
    };
    FileUploadComponent.prototype.deleteAll = function () {
        var _this = this;
        this.saveing = true;
        this.businessServer.clearVolumeContext(this.business.id).subscribe(function (count) {
            _this.saveing = false;
            _this.formBind = [];
            _this.uploader.clearQueue();
            _this._modalService.dismissAll('clear');
        });
    };
    FileUploadComponent.prototype.deleteItem = function () {
        var _this = this;
        this.saveing = true;
        if (this.selectItem.volume) {
            this.businessServer.deleteVolumeContext(this.selectItem.volume.id).subscribe(function (data) {
                _this.formBind = _this.formBind.filter(function (item) {
                    if (item.volume) {
                        return item.volume.id !== data;
                    }
                    else {
                        return true;
                    }
                });
                if (_this.selectItem.item) {
                    _this.selectItem.item.remove();
                }
                _this._modalService.dismissAll('deleted');
                _this.saveing = false;
            });
        }
        else {
            this.formBind = this.formBind.filter(function (bind) { return bind.item !== _this.selectItem.item; });
            this.selectItem.item.remove();
            this._modalService.dismissAll('deleted');
            this.saveing = false;
        }
    };
    FileUploadComponent.prototype.saveItem = function (context) {
        var _this = this;
        this.saveing = true;
        this.businessServer.putVolumeContext(this.selectItem.control.value, this.business.id).subscribe(function (id) {
            _this.formBind.forEach(function (item) {
                if (item.volume && (item.volume.id === id)) {
                    item.volume = item.control.value;
                }
            });
            _this.saveing = false;
            _this._modalService.dismissAll('update');
        });
    };
    FileUploadComponent.prototype.getPageByIndex = function (index, onlyStart) {
        var result = 1;
        for (var _i = 0, _a = this.formBind; _i < _a.length; _i++) {
            var item = _a[_i];
            if (item.index === index) {
                if (item.control.value.pageCount > 1) {
                    return onlyStart ? "" + result : result + " - " + (result + item.control.value.pageCount - 1);
                }
                else {
                    return "" + result;
                }
            }
            result += item.control.value.pageCount;
        }
        return null;
    };
    Object.defineProperty(FileUploadComponent.prototype, "getPageCountTotal", {
        get: function () {
            var result = 0;
            this.formBind.forEach(function (data) {
                result += data.control.value.pageCount;
            });
            return result;
        },
        enumerable: true,
        configurable: true
    });
    FileUploadComponent.prototype.openFileOverModal = function (event, content) {
        this._modalService.dismissAll("reopen");
        this._modalService.open(content, { size: 'lg', centered: true });
    };
    FileUploadComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.repoIcon = this.sanitizer.bypassSecurityTrustHtml(repo.toSVG());
        this.xIcon = this.sanitizer.bypassSecurityTrustHtml(x.toSVG());
        this._route.data.subscribe(function (data) {
            _this.business = data.business;
            _this.business.contexts = data.content;
            _this.business.contexts.forEach(function (context) {
                var formGroup = _this.fb.group({
                    id: [context.id, [Validators.required, Validators.maxLength(32)]],
                    type: [context.type, Validators.required],
                    ordinal: [context.ordinal, Validators.required],
                    pageCount: [context.pageCount, Validators.required],
                    name: [context.name, [Validators.required, Validators.maxLength(32)]]
                });
                var bindItem = new VolumeContextUploadItem(formGroup, _this.i++);
                bindItem.volume = context;
                _this.formBind.push(bindItem);
            });
        });
        this.uploader.onAfterAddingFile = function (fileItem) {
            var filename = fileItem.file.name;
            if (filename.length > 32) {
                filename = filename.substr(0, 31);
            }
            if (filename.lastIndexOf('.') > 0) {
                filename = filename.substr(0, filename.lastIndexOf('.'));
            }
            _this._modalService.dismissAll("added");
            var index = _this.i++;
            fileItem.withCredentials = false;
            var formGroup = _this.fb.group({
                id: [null],
                type: [fileItem.file.type, Validators.required],
                ordinal: [_this.getNewOrdinal(), Validators.required],
                pageCount: [1, Validators.required],
                name: [filename, [Validators.required, Validators.maxLength(32)]]
            });
            var bindItem = new VolumeContextUploadItem(formGroup, index);
            bindItem.item = fileItem;
            _this.formBind.push(bindItem);
            console.log('onAfterAddingFile is call');
        };
        this.uploader.onSuccessItem = function (item, response, status, headers) {
            console.log("OnSuccessItem call:" + status);
            if (status == 200 || status == 201) {
                var fid = JSON.parse(response).fid;
                if (fid) {
                    var bind = _this.getBindByItem(item);
                    bind.control.get('id').setValue(fid);
                    bind.fid = fid;
                    _this.businessServer.putVolumeContext(bind.control.value, _this.business.id).pipe(catchError(function (err) {
                        return EMPTY;
                    })).subscribe(function (id) {
                        _this.formBind.forEach(function (data) {
                            if (data.fid === id) {
                                data.fid = null;
                                data.volume = data.control.value;
                            }
                        });
                        //TODO complete item
                    });
                }
                else {
                    item.cancel();
                }
            }
            console.log("OnSuccessItem call:" + response);
        };
    };
    FileUploadComponent.prototype.ngAfterViewInit = function () {
        this.updateCanvasDim();
        this.elementRef.nativeElement.ownerDocument.body.style.backgroundColor = '#f9f9f9';
    };
    FileUploadComponent.prototype.ngOnDestroy = function () {
        this.elementRef.nativeElement.ownerDocument.body.style.backgroundColor = "#fff";
    };
    tslib_1.__decorate([
        ViewChild('imagewrapper'),
        tslib_1.__metadata("design:type", ElementRef)
    ], FileUploadComponent.prototype, "wrapper", void 0);
    tslib_1.__decorate([
        HostListener('window:resize', ['$event']),
        tslib_1.__metadata("design:type", Function),
        tslib_1.__metadata("design:paramtypes", [Object]),
        tslib_1.__metadata("design:returntype", void 0)
    ], FileUploadComponent.prototype, "onResize", null);
    FileUploadComponent = tslib_1.__decorate([
        Component({
            selector: 'app-file-upload',
            templateUrl: './file-upload.component.html',
            styleUrls: ['./file-upload.component.scss'],
            providers: [
                {
                    provide: IMAGEVIEWER_CONFIG,
                    useValue: MY_IMAGEVIEWER_CONFIG
                }
            ]
        }),
        tslib_1.__metadata("design:paramtypes", [ActivatedRoute,
            ElementRef,
            DomSanitizer,
            NgbModal,
            FormBuilder,
            BusinessService,
            DragulaService])
    ], FileUploadComponent);
    return FileUploadComponent;
}());
export { FileUploadComponent };
//# sourceMappingURL=file-upload.component.js.map