exports.structure_spawn = STRUCTURE_SPAWN;
exports.structure_extension = STRUCTURE_EXTENSION;
exports.structure_road = STRUCTURE_ROAD;
exports.structure_wall = STRUCTURE_WALL;
exports.structure_rampart = STRUCTURE_RAMPART;
exports.structure_keeper_lair = STRUCTURE_KEEPER_LAIR;
exports.structure_portal = STRUCTURE_PORTAL;
exports.structure_controller = STRUCTURE_CONTROLLER;
exports.structure_link = STRUCTURE_LINK;
exports.structure_storage = STRUCTURE_STORAGE;
exports.structure_tower = STRUCTURE_TOWER;
exports.structure_observer = STRUCTURE_OBSERVER;
exports.structure_power_bank = STRUCTURE_POWER_BANK;
exports.structure_power_spawn = STRUCTURE_POWER_SPAWN;
exports.structure_extractor = STRUCTURE_EXTRACTOR;
exports.structure_lab = STRUCTURE_LAB;
exports.structure_terminal = STRUCTURE_TERMINAL;
exports.structure_container = STRUCTURE_CONTAINER;
exports.structure_nuker = STRUCTURE_NUKER;

exports.numStructures=function (structureType) {
  return function (level) {
    return CONTROLLER_STRUCTURES[structureType][level];
  }
}
