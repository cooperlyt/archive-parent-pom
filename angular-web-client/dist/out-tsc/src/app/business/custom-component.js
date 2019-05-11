export function genBusinessSearchKey(business) {
    business.key = "";
    business.fields.forEach(function (group) {
        switch (group.type) {
            case 'CONSTRUCT_CORP': {
                if (group.option && group.option.key) {
                    if (group.fieldDefines[1].value && group.fieldDefines[1].value.trim() != "") {
                        business.key = business.key + "[" + group.fieldDefines[1].value + "]" + "[" + group.fieldDefines[2].value + "]";
                    }
                }
                break;
            }
            case 'PERSON': {
                break;
            }
            default: {
                group.fieldDefines.forEach(function (value) {
                    if (value.option && value.option.key) {
                        if (value.value && (value.value.trim() != "")) {
                            business.key = business.key + "[" + value.value + "]";
                        }
                    }
                });
            }
        }
    });
}
//# sourceMappingURL=custom-component.js.map