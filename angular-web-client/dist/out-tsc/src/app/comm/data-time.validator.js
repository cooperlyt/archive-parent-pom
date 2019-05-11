export var DateTimeValidator = function (fc) {
    var date = new Date(fc.value);
    var isValid = !isNaN(date.valueOf());
    return isValid ? null : {
        dateValid: {
            valid: false
        }
    };
};
//# sourceMappingURL=data-time.validator.js.map