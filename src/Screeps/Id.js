"use strict";

exports.unsafeGetObjectById=function (id) {
    var result = Game.getObjectById(id);
    if (!result) return Nothing(      );
    else         return Just   (result);
}

exports.unsafeGetObjectByIdEff=function (id) {
    return function () {
        var result = Game.getObjectById(id);
        if (!result) return Nothing(      );
        else         return Just   (result);
    }
}
