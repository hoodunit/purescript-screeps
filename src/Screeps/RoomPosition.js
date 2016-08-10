"use strict";

// module Screeps.RoomPosition

exports.mkRoomPosition = function(x){
  return function(y){
    return function(roomName){
      return new RoomPosition(x, y, roomName);
    }
  }
}

exports.lookForImpl = function(pos){
  return function(type){
    return function(left){
      return function(right){
        try {
          return right(pos.lookFor(type));
        } catch(e){
          return left(e.toString());
        }
      }
    }
  }
}
