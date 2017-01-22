"use strict";

exports.unsafeGameField = function (fieldName) {
    return function() { return Game[fieldName]; }
}
exports.map = Game.map;
exports.gcl = Game.gcl;
exports.getUsedCpu = function () {
    return Game.cpu.getUsed();
}
exports.notify  = function (msg) {
    return function() {
        return Game.notify(msg);
    }
}
exports.notify_ = function (msg) {
    return function(interval) {
        return function() {
            return Game.notify(msg, interval);
        }
    }
}
