"use strict";

// module Screeps.FFI

exports.unsafeField = function(key){
  return function(obj){
    return obj[key];
  }
}

exports.unsafeGetFieldEffect = function(key){
  return function(obj){
    return function(){
      return obj[key];
    }
  }
}

exports.unsafeSetFieldEffect = function(key){
  return function(obj){
    return function(val){
      return function(){
        obj[key] = val;
      }
    }
  }
}

exports.unsafeDeleteFieldEffect = function(key){
  return function(obj){
      return function(){
        delete obj[key];
      }
  }
}

exports.runThisEffectFn0 = function(key){
  return function(self){
    return function(){
      return self[key]();
    }
  }
}

exports.runThisEffectFn1 = function(key){
  return function(self){
    return function(a){
      return function(){
        return self[key](a);
      }
    }
  }
}

exports.runThisEffectFn2 = function(key){
  return function(self){
    return function(a){
      return function(b){
        return function(){
          return self[key](a, b);
        }
      }
    }
  }
}

exports.runThisEffectFn3 = function(key){
  return function(self){
    return function(a){
      return function(b){
        return function(c){
          return function(){
            return self[key](a, b, c);
          }
        }
      }
    }
  }
}

exports.runThisEffectFn4 = function(key){
  return function(self){
    return function(a){
      return function(b){
        return function(c){
          return function(d){
            return function(){
              return self[key](a, b, c, d);
            }
          }
        }
      }
    }
  }
}

exports.runThisEffectFn5 = function(key){
  return function(self){
    return function(a){
      return function(b){
        return function(c){
          return function(d){
            return function(e){
              return function(){
                return self[key](a, b, c, d, e);
              }
            }
          }
        }
      }
    }
  }
}

exports.runThisEffectFn6 = function(key){
  return function(self){
    return function(a){
      return function(b){
        return function(c){
          return function(d){
            return function(e){
              return function(f){
                return function(){
                  return self[key](a, b, c, d, e, f);
                }
              }
            }
          }
        }
      }
    }
  }
}

exports.runThisFn0 = function(key){
  return function(self){
    return self[key]();
  }
}

exports.runThisFn1 = function(key){
  return function(self){
    return function(a){
      return self[key](a);
    }
  }
}

exports.runThisFn2 = function(key){
  return function(self){
    return function(a){
      return function(b){
        return self[key](a, b);
      }
    }
  }
}

exports.runThisFn3 = function(key){
  return function(self){
    return function(a){
      return function(b){
        return function(c){
          return self[key](a, b, c);
        }
      }
    }
  }
}

exports.runThisFn4 = function(key){
  return function(self){
    return function(a){
      return function(b){
        return function(c){
          return function(d){
            return self[key](a, b, c, d);
          }
        }
      }
    }
  }
}

exports.runThisFn5 = function(key){
  return function(self){
    return function(a){
      return function(b){
        return function(c){
          return function(d){
            return function(e){
              return self[key](a, b, c, d, e);
            }
          }
        }
      }
    }
  }
}

exports.runThisFn6 = function(key){
  return function(self){
    return function(a){
      return function(b){
        return function(c){
          return function(d){
            return function(e){
              return function(f){
                return self[key](a, b, c, d, e, f);
              }
            }
          }
        }
      }
    }
  }
}

exports.null = null;
exports.undefined = undefined;

exports.notNullOrUndefined = function(x){
    return x;
}

exports.isNull = function(x){
    return x === null;
}

exports.isUndefined = function(x){
    return x === undefined;
}

exports.toMaybeImpl = function(val, nothing, just){
    if(val === null || val === undefined){
        return nothing;
    } else {
        return just(val);
    }
}

exports.selectMaybesImpl = function(isJust){
    return function(fromJust){
        return function(obj){
            var newObj = {};
            for(var key in obj){
                if(!obj.hasOwnProperty(key)){
                    continue;
                }
                if(isJust(obj[key])){
                    newObj[key] = fromJust(obj[key]);
                }
            }
            return newObj;
        }
    }
}
