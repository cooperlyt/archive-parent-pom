import * as tslib_1 from "tslib";
import { Directive, ElementRef, Input, Renderer } from '@angular/core';
var ThumbnailDirective = /** @class */ (function () {
    function ThumbnailDirective(el, renderer) {
        this.el = el;
        this.renderer = renderer;
        this.maxSize = 70;
    }
    ThumbnailDirective.prototype.ngOnChanges = function (changes) {
        var _this = this;
        var reader = new FileReader();
        var el = this.el;
        reader.onloadend = function (readerEvent) {
            var image = new Image();
            image.onload = function (imageEvent) {
                // Resize the image
                var canvas = document.createElement('canvas');
                var maxSize = _this.maxSize;
                var width = image.width;
                var height = image.height;
                if (width > height) {
                    if (width > maxSize) {
                        height *= maxSize / width;
                        width = maxSize;
                    }
                }
                else {
                    if (height > maxSize) {
                        width *= maxSize / height;
                        height = maxSize;
                    }
                }
                canvas.width = width;
                canvas.height = height;
                canvas.getContext('2d').drawImage(image, 0, 0, width, height);
                el.nativeElement.src = canvas.toDataURL(_this.type);
            };
            image.src = reader.result;
        };
        if (this.image) {
            return reader.readAsDataURL(this.image);
        }
    };
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", Object)
    ], ThumbnailDirective.prototype, "image", void 0);
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", String)
    ], ThumbnailDirective.prototype, "type", void 0);
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", Number)
    ], ThumbnailDirective.prototype, "maxSize", void 0);
    ThumbnailDirective = tslib_1.__decorate([
        Directive({
            selector: 'img[thumbnail]'
        }),
        tslib_1.__metadata("design:paramtypes", [ElementRef, Renderer])
    ], ThumbnailDirective);
    return ThumbnailDirective;
}());
export { ThumbnailDirective };
//# sourceMappingURL=thumbnail.directive.js.map