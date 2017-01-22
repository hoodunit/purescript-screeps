"use strict";

exports.getMemoryGlobal = function(){ return Memory; }
exports.getRawMemoryGlobal = function(){ return RawMemory; }
exports.getObjectMemory = function (objectType) {
    return function                (objectId) {
        return function            (key) {
            if   (!Memory[objectType]          )
                   Memory[objectType]          ={};
            if   (!Memory[objectType][objectId])
                   Memory[objectType][objectId]={};
            return Memory[objectType][objectId][key];
        }
    }
}
exports.setObjectMemory = function(objectType) {
    return function               (objectId) {
        return function           (key) {
            return function       (value) {
                return function   () {
                    if   (!Memory[objectType]          )
                           Memory[objectType]               ={};
                    if   (!Memory[objectType][objectId])
                           Memory[objectType][objectId]     ={};
                    return Memory[objectType][objectId][key]=value;
                }
            }
        }
    }
}
