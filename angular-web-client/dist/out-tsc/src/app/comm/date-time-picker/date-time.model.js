var DateTimeModel = /** @class */ (function () {
    function DateTimeModel(init) {
        Object.assign(this, init);
    }
    DateTimeModel.fromLocalString = function (dateString) {
        var date = new Date(dateString);
        var isValidDate = !isNaN(date.valueOf());
        if (!dateString || !isValidDate) {
            return null;
        }
        return new DateTimeModel({
            year: date.getFullYear(),
            month: date.getMonth() + 1,
            day: date.getDate(),
            hour: date.getHours(),
            minute: date.getMinutes(),
            second: date.getSeconds(),
            timeZoneOffset: date.getTimezoneOffset()
        });
    };
    DateTimeModel.prototype.isInteger = function (value) {
        return typeof value === 'number' && isFinite(value) && Math.floor(value) === value;
    };
    DateTimeModel.prototype.toString = function () {
        if (this.isInteger(this.year) && this.isInteger(this.month) && this.isInteger(this.day)) {
            var year = this.year.toString().padStart(2, '0');
            var month = this.month.toString().padStart(2, '0');
            var day = this.day.toString().padStart(2, '0');
            if (!this.hour) {
                this.hour = 0;
            }
            if (!this.minute) {
                this.minute = 0;
            }
            if (!this.second) {
                this.second = 0;
            }
            if (!this.timeZoneOffset) {
                this.timeZoneOffset = new Date().getTimezoneOffset();
            }
            var hour = this.hour.toString().padStart(2, '0');
            var minute = this.minute.toString().padStart(2, '0');
            var second = this.second.toString().padStart(2, '0');
            var tzo = -this.timeZoneOffset;
            var dif = tzo >= 0 ? '+' : '-', pad = function (num) {
                var norm = Math.floor(Math.abs(num));
                return (norm < 10 ? '0' : '') + norm;
            };
            var isoString = pad(year) + "-" + pad(month) + "-" + pad(day) + "T" + pad(hour) + ":" + pad(minute) + ":" + pad(second) + dif + pad(tzo / 60) + ":" + pad(tzo % 60);
            return isoString;
        }
        return null;
    };
    return DateTimeModel;
}());
export { DateTimeModel };
//# sourceMappingURL=date-time.model.js.map