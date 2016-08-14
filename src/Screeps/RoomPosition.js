"use strict";

// module Screeps.RoomPosition

exports.mkRoomPosition = function(x){
  return function(y){
    return function(roomName){
      return new RoomPosition(x, y, roomName);
    }
  }
}

exports.errorToEitherImpl = function(fun){
  return function(left){
    return function(right){
      try {
        return right(fun());
      } catch(e){
        console.log("Caught error: " + e.toString());
        return left(e);
      }
    }
  }
}
