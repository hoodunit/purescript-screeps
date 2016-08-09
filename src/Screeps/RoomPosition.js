"use strict";

// module Screeps.RoomPosition

exports.mkRoomPosition = function(x){
  return function(y){
    return function(roomName){
      return new RoomPosition(x, y, roomName);
    }
  }
}
