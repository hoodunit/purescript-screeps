"use strict";

exports.unsafeGetObjectById_helper=function(Nothing) {
    return function (Just) {
        return function (id) {
            var result = Game.getObjectById(id);
            if (!result) return Nothing        ;
            else         return Just   (result);
        }
    }
}

