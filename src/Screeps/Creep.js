"use strict";

exports.totalAmtCarrying = function(creep) {
  return _.sum(creep.carry);
};

exports.freeCapacity = function (creep) {
    return creep.store.getFreeCapacity();
};
