"use strict";

exports.createCreepImpl = function(structure){
    return function(parts){
        return function(left){
            return function(right){
                return function(){
                    var result = structure.createCreep(parts);
                    if(typeof result === "string"){
                        return right(result);
                    } else {
                        return left(result);
                    }
                }
            }
        }
    }
}

exports.createCreepPrimeImpl = function(structure){
    return function(parts){
        return function(name){
            return function(memory){
                return function(left){
                    return function(right){
                        return function(){
                            var result = structure.createCreep(parts, name, memory);
                            if(typeof result === "string"){
                                return right(result);
                            } else {
                                return left(result);
                            }
                        }
                    }
                }
            }
        }
    }
}
