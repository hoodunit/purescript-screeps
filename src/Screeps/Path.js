exports.usePathFinder=function() {
    return PathFinder.use(true);
}
exports.deserialize=function(json) {
    return PathFinder.CostMatrix.deserialize(json);
}
exports.search=function(from) {
    return     function(to  ) {
        return function(opts) {
            var clonedOpts = {
                  roomCallback:    function (rn) { return opts.roomCallback(rn)(); }
                , plainCost:       opts.plainCost
                , swampCost:       opts.swampCost
                , flee:            opts.flee
                , maxOps:          opts.maxOps
                , maxRooms:        opts.maxRooms
                , maxCost:         opts.maxCost
                , heuristicWeight: opts.heuristicWeight
                };
            return function() {
                return PathFinder.search(from, to, clonedOpts);
            }
        }
    }
}
exports.newCostMatrix=function() {
    return new PathFinder.CostMatrix;
}
exports.infinity=Number.POSITIVE_INFINITY;

