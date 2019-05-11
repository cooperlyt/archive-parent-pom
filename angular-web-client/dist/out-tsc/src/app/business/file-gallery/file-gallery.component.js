import * as tslib_1 from "tslib";
import { Component, ViewChild, ElementRef } from '@angular/core';
import { environment } from '../../../environments/environment';
import { ActivatedRoute } from '@angular/router';
import { NgxGalleryAnimation, NgxGalleryImageSize } from 'ngx-gallery';
var FileContext = /** @class */ (function () {
    function FileContext(type, fid, name) {
        this.type = type;
        this.fid = fid;
        this.name = name;
    }
    Object.defineProperty(FileContext.prototype, "isPdf", {
        get: function () {
            return this.type == 'application/pdf';
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(FileContext.prototype, "isImg", {
        get: function () {
            return this.type.startsWith("image");
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(FileContext.prototype, "small", {
        get: function () {
            if (this.isPdf) {
                return environment.fileUrl + "/pdf/" + this.fid;
            }
            else if (this.isImg) {
                return environment.fileUrl + "/img/200x200/" + this.fid;
            }
            return null;
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(FileContext.prototype, "medium", {
        get: function () {
            if (this.isPdf) {
                return environment.fileUrl + "/pdf/" + this.fid;
            }
            else if (this.isImg) {
                return environment.fileUrl + "/img/800x600s/" + this.fid;
            }
            return null;
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(FileContext.prototype, "big", {
        get: function () {
            if (this.isPdf) {
                return environment.fileUrl + "/pdf/" + this.fid;
            }
            else if (this.isImg) {
                return environment.fileUrl + "/img/orig/" + this.fid;
            }
            return null;
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(FileContext.prototype, "description", {
        get: function () {
            return this.name;
        },
        enumerable: true,
        configurable: true
    });
    return FileContext;
}());
export { FileContext };
var FileGalleryComponent = /** @class */ (function () {
    function FileGalleryComponent(_route) {
        this._route = _route;
        this.galleryImages = [];
        this._canvasDim = { width: 766, height: 600 };
    }
    Object.defineProperty(FileGalleryComponent.prototype, "canvasDim", {
        get: function () {
            return this._canvasDim;
        },
        enumerable: true,
        configurable: true
    });
    FileGalleryComponent.prototype.updateCanvasDim = function () {
        var _this = this;
        var el = this.wrapper && this.wrapper.nativeElement ? this.wrapper.nativeElement : null;
        if (el && (el.offsetWidth !== this._canvasDim.width || el.offsetHeight !== this._canvasDim.height)) {
            var newDim_1 = { width: el.offsetWidth - 2, height: el.offsetHeight - 2 };
            console.log("resize:", el.offsetWidth);
            setTimeout(function () { return _this._canvasDim = newDim_1; }, 0);
        }
    };
    FileGalleryComponent.prototype.onImageChange = function (data) {
        console.log(data);
    };
    FileGalleryComponent.prototype.ngOnInit = function () {
        var _this = this;
        this._route.data.subscribe(function (data) {
            data.content.forEach(function (data) {
                _this.galleryImages.push(new FileContext(data.type, data.id, data.name));
            });
        });
        this.galleryOptions = [
            {
                height: '720px',
                width: '100%',
                imageAnimation: NgxGalleryAnimation.Slide,
                previewZoom: true,
                previewRotate: true,
                thumbnailsColumns: 7,
                thumbnailsArrowsAutoHide: false,
                imageSize: NgxGalleryImageSize.Contain,
                imageDescription: true
            },
            {
                breakpoint: 800,
                width: '100%',
                height: '720px',
                imagePercent: 80,
                thumbnailsPercent: 20,
                thumbnailsMargin: 20,
                thumbnailMargin: 20,
            },
            // max-width 400
            {
                breakpoint: 400,
                preview: false
            }
        ];
    };
    tslib_1.__decorate([
        ViewChild('imagewrapper'),
        tslib_1.__metadata("design:type", ElementRef)
    ], FileGalleryComponent.prototype, "wrapper", void 0);
    FileGalleryComponent = tslib_1.__decorate([
        Component({
            selector: 'app-file-gallery',
            templateUrl: './file-gallery.component.html',
            styleUrls: ['./file-gallery.component.scss']
        }),
        tslib_1.__metadata("design:paramtypes", [ActivatedRoute])
    ], FileGalleryComponent);
    return FileGalleryComponent;
}());
export { FileGalleryComponent };
//# sourceMappingURL=file-gallery.component.js.map