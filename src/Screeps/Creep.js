"use strict";

exports.totalAmtCarrying = function(creep){
  return _.sum(creep.carry);
}
