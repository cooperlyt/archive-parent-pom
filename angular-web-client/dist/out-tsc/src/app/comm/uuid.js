import { v4 as uuid } from 'uuid';
export function genUUID() {
    var result = "";
    uuid().split("-").forEach(function (element) {
        result = result + element;
    });
    return result;
}
//# sourceMappingURL=uuid.js.map