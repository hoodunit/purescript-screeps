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
