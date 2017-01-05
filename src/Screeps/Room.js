"use strict";

// module Screeps.Room

exports.getRoomGlobal = function(){ return Room; }

exports.findExitToImpl = function(room){
  return function(otherRoom){
    return function(left){
      return function(right){
        var result = room.findExitTo(otherRoom);
        if(result == FIND_EXIT_TOP ||
           result == FIND_EXIT_RIGHT ||
           result == FIND_EXIT_BOTTOM ||
           result == FIND_EXIT_LEFT){
          return right(result);
        } else {
          return left(result);
        }
      }
    }
  }
}

exports.debugIt = function (name) {
  return function (arg) {
    console.log("Debug", name+":", JSON.stringify(arg));
    return arg;
  }
}

exports.debugRunThisFn6 = function(key){
  return function(self){
    return function(a){
      return function(b){
        return function(c){
          return function(d){
            return function(e){
              return function(f){
                var result=self[key](a, b, c, d, e, f);
                console.log("DEBUGGING:", JSON.stringify(result));
                return result
              }
            }
          }
        }
      }
    }
  }
}

