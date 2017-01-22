exports.lookupRoom=function(name) {
    return function () {
        return Game.rooms[name];
    }
}
