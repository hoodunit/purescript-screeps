"use strict";

exports.ok = OK;
exports.err_not_owner = ERR_NOT_OWNER;
exports.err_no_path = ERR_NO_PATH;
exports.err_name_exists = ERR_NAME_EXISTS;
exports.err_busy = ERR_BUSY;
exports.err_not_found = ERR_NOT_FOUND;
exports.err_not_enough_energy = ERR_NOT_ENOUGH_ENERGY;
exports.err_not_enough_resources = ERR_NOT_ENOUGH_RESOURCES;
exports.err_invalid_target = ERR_INVALID_TARGET;
exports.err_full = ERR_FULL;
exports.err_not_in_range = ERR_NOT_IN_RANGE;
exports.err_invalid_args = ERR_INVALID_ARGS;
exports.err_tired = ERR_TIRED;
exports.err_no_bodypart = ERR_NO_BODYPART;
exports.err_not_enough_extensions = ERR_NOT_ENOUGH_EXTENSIONS;
exports.err_rcl_not_enough = ERR_RCL_NOT_ENOUGH;
exports.err_gcl_not_enough = ERR_GCL_NOT_ENOUGH;

exports.find_exit_top = FIND_EXIT_TOP;
exports.find_exit_right = FIND_EXIT_RIGHT;
exports.find_exit_bottom = FIND_EXIT_BOTTOM;
exports.find_exit_left = FIND_EXIT_LEFT;
exports.find_exit = FIND_EXIT;
exports.find_creeps = FIND_CREEPS;
exports.find_my_creeps = FIND_MY_CREEPS;
exports.find_hostile_creeps = FIND_HOSTILE_CREEPS;
exports.find_sources_active = FIND_SOURCES_ACTIVE;
exports.find_sources = FIND_SOURCES;
exports.find_dropped_energy = FIND_DROPPED_ENERGY;
exports.find_dropped_resources = FIND_DROPPED_RESOURCES;
exports.find_structures = FIND_STRUCTURES;
exports.find_structures0 = FIND_STRUCTURES;
exports.find_my_structures = FIND_MY_STRUCTURES;
exports.find_hostile_structures = FIND_HOSTILE_STRUCTURES;
exports.find_flags = FIND_FLAGS;
exports.find_construction_sites = FIND_CONSTRUCTION_SITES;
exports.find_my_spawns = FIND_MY_SPAWNS;
exports.find_hostile_spawns = FIND_HOSTILE_SPAWNS;
exports.find_my_construction_sites = FIND_MY_CONSTRUCTION_SITES;
exports.find_hostile_construction_sites = FIND_HOSTILE_CONSTRUCTION_SITES;
exports.find_minerals = FIND_MINERALS;
exports.find_nukes = FIND_NUKES;

exports.top = TOP;
exports.top_right = TOP_RIGHT;
exports.right = RIGHT;
exports.bottom_right = BOTTOM_RIGHT;
exports.bottom = BOTTOM;
exports.bottom_left = BOTTOM_LEFT;
exports.left = LEFT;
exports.top_left = TOP_LEFT;

exports.color_red = COLOR_RED;
exports.color_purple = COLOR_PURPLE;
exports.color_blue = COLOR_BLUE;
exports.color_cyan = COLOR_CYAN;
exports.color_green = COLOR_GREEN;
exports.color_yellow = COLOR_YELLOW;
exports.color_orange = COLOR_ORANGE;
exports.color_brown = COLOR_BROWN;
exports.color_grey = COLOR_GREY;
exports.color_white = COLOR_WHITE;

exports.look_creeps = LOOK_CREEPS;
exports.look_energy = LOOK_ENERGY;
exports.look_resources = LOOK_RESOURCES;
exports.look_sources = LOOK_SOURCES;
exports.look_minerals = LOOK_MINERALS;
exports.look_structures = LOOK_STRUCTURES;
exports.look_flags = LOOK_FLAGS;
exports.look_construction_sites = LOOK_CONSTRUCTION_SITES;
exports.look_nukes = LOOK_NUKES;
exports.look_terrain = LOOK_TERRAIN;

exports.obstacle_object_types = OBSTACLE_OBJECT_TYPES;

exports.part_move = MOVE;
exports.part_work = WORK;
exports.part_carry = CARRY;
exports.part_attack = ATTACK;
exports.part_ranged_attack = RANGED_ATTACK;
exports.part_tough = TOUGH;
exports.part_heal = HEAL;
exports.part_claim = CLAIM;

exports.bodypart_cost = BODYPART_COST;

exports.creep_life_time = CREEP_LIFE_TIME;
exports.creep_claim_life_time = CREEP_CLAIM_LIFE_TIME;
exports.creep_corpse_rate = CREEP_CORPSE_RATE;

exports.carry_capacity = CARRY_CAPACITY;
exports.harvest_power = HARVEST_POWER;
exports.harvest_mineral_power = HARVEST_MINERAL_POWER;
exports.repair_power = REPAIR_POWER;
exports.dismantle_power = DISMANTLE_POWER;
exports.build_power = BUILD_POWER;
exports.attack_power = ATTACK_POWER;
exports.upgrade_controller_power = UPGRADE_CONTROLLER_POWER;
exports.ranged_attack_power = RANGED_ATTACK_POWER;
exports.heal_power = HEAL_POWER;
exports.ranged_heal_power = RANGED_HEAL_POWER;
exports.repair_cost = REPAIR_COST;
exports.dismantle_cost = DISMANTLE_COST;

exports.rampart_decay_amount = RAMPART_DECAY_AMOUNT;
exports.rampart_decay_time = RAMPART_DECAY_TIME;
exports.rampart_hits = RAMPART_HITS;
exports.rampart_hits_max = RAMPART_HITS_MAX;

exports.energy_regen_time = ENERGY_REGEN_TIME;
exports.energy_decay = ENERGY_DECAY;

exports.spawn_hits = SPAWN_HITS;
exports.spawn_energy_start = SPAWN_ENERGY_START;
exports.spawn_energy_capacity = SPAWN_ENERGY_CAPACITY;
exports.creep_spawn_time = CREEP_SPAWN_TIME;

exports.source_energy_capacity = SOURCE_ENERGY_CAPACITY;
exports.source_energy_neutral_capacity = SOURCE_ENERGY_NEUTRAL_CAPACITY;
exports.source_energy_keeper_capacity = SOURCE_ENERGY_KEEPER_CAPACITY;

exports.wall_hits = WALL_HITS;
exports.wall_hits_max = WALL_HITS_MAX;

exports.extension_hits = EXTENSION_HITS;
exports.extension_energy_capacity = EXTENSION_ENERGY_CAPACITY;

exports.road_hits = ROAD_HITS;
exports.road_wearout = ROAD_WEAROUT;
exports.road_decay_amount = ROAD_DECAY_AMOUNT;
exports.road_decay_time = ROAD_DECAY_TIME;

exports.link_hits = LINK_HITS;
exports.link_hits_max = LINK_HITS_MAX;
exports.link_capacity = LINK_CAPACITY;
exports.link_cooldown = LINK_COOLDOWN;
exports.link_loss_ratio = LINK_LOSS_RATIO;

exports.storage_capacity = STORAGE_CAPACITY;
exports.storage_hits = STORAGE_HITS;

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

exports.construction_cost = CONSTRUCTION_COST;
exports.construction_cost_road_swamp_ratio = CONSTRUCTION_COST_ROAD_SWAMP_RATIO;

exports.controller_levels = CONTROLLER_LEVELS;
exports.controller_structures = CONTROLLER_STRUCTURES;
exports.controller_downgrade = CONTROLLER_DOWNGRADE;
exports.controller_claim_downgrade = CONTROLLER_CLAIM_DOWNGRADE;
exports.controller_reserve = CONTROLLER_RESERVE;
exports.controller_reserve_max = CONTROLLER_RESERVE_MAX;
exports.controller_max_upgrade_per_tick = CONTROLLER_MAX_UPGRADE_PER_TICK;
exports.controller_attack_blocked_upgrade = CONTROLLER_ATTACK_BLOCKED_UPGRADE;

exports.tower_hits = TOWER_HITS;
exports.tower_capacity = TOWER_CAPACITY;
exports.tower_energy_cost = TOWER_ENERGY_COST;
exports.tower_power_attack = TOWER_POWER_ATTACK;
exports.tower_power_heal = TOWER_POWER_HEAL;
exports.tower_power_repair = TOWER_POWER_REPAIR;
exports.tower_optimal_range = TOWER_OPTIMAL_RANGE;
exports.tower_falloff_range = TOWER_FALLOFF_RANGE;
exports.tower_falloff = TOWER_FALLOFF;

exports.observer_hits = OBSERVER_HITS;
exports.observer_range = OBSERVER_RANGE;

exports.power_bank_hits = POWER_BANK_HITS;
exports.power_bank_capacity_max = POWER_BANK_CAPACITY_MAX;
exports.power_bank_capacity_min = POWER_BANK_CAPACITY_MIN;
exports.power_bank_capacity_crit = POWER_BANK_CAPACITY_CRIT;
exports.power_bank_decay = POWER_BANK_DECAY;
exports.power_bank_hit_back = POWER_BANK_HIT_BACK;

exports.power_spawn_hits = POWER_SPAWN_HITS;
exports.power_spawn_energy_capacity = POWER_SPAWN_ENERGY_CAPACITY;
exports.power_spawn_power_capacity = POWER_SPAWN_POWER_CAPACITY;
exports.power_spawn_energy_ratio = POWER_SPAWN_ENERGY_RATIO;

exports.extractor_hits = EXTRACTOR_HITS;

exports.lab_hits = LAB_HITS;
exports.lab_mineral_capacity = LAB_MINERAL_CAPACITY;
exports.lab_energy_capacity = LAB_ENERGY_CAPACITY;
exports.lab_boost_energy = LAB_BOOST_ENERGY;
exports.lab_boost_mineral = LAB_BOOST_MINERAL;
exports.lab_cooldown = LAB_COOLDOWN;

exports.gcl_pow = GCL_POW;
exports.gcl_multiply = GCL_MULTIPLY;
exports.gcl_novice = GCL_NOVICE;

exports.mode_simulation = MODE_SIMULATION;
exports.mode_survival = MODE_SURVIVAL;
exports.mode_world = MODE_WORLD;
exports.mode_arena = MODE_ARENA;

exports.terrain_mask_wall = TERRAIN_MASK_WALL;
exports.terrain_mask_swamp = TERRAIN_MASK_SWAMP;
exports.terrain_mask_lava = TERRAIN_MASK_LAVA;

exports.max_construction_sites = MAX_CONSTRUCTION_SITES;
exports.max_creep_size = MAX_CREEP_SIZE;

exports.mineral_regen_time = MINERAL_REGEN_TIME;
exports.mineral_min_amount = MINERAL_MIN_AMOUNT;
exports.mineral_random_factor = MINERAL_RANDOM_FACTOR;

exports.terminal_capacity = TERMINAL_CAPACITY;
exports.terminal_hits = TERMINAL_HITS;
exports.terminal_send_cost = TERMINAL_SEND_COST;
exports.terminal_min_send = TERMINAL_MIN_SEND;

exports.container_hits = CONTAINER_HITS;
exports.container_capacity = CONTAINER_CAPACITY;
exports.container_decay = CONTAINER_DECAY;
exports.container_decay_time = CONTAINER_DECAY_TIME;
exports.container_decay_time_owned = CONTAINER_DECAY_TIME_OWNED;

exports.nuker_hits = NUKER_HITS;
exports.nuker_cooldown = NUKER_COOLDOWN;
exports.nuker_energy_capacity = NUKER_ENERGY_CAPACITY;
exports.nuker_ghodium_capacity = NUKER_GHODIUM_CAPACITY;
exports.nuke_land_time = NUKE_LAND_TIME;
exports.nuke_range = NUKE_RANGE;
exports.nuke_damage = NUKE_DAMAGE;

exports.resource_energy = RESOURCE_ENERGY;
exports.resource_power = RESOURCE_POWER;

exports.resource_hydrogen = RESOURCE_HYDROGEN;
exports.resource_oxygen = RESOURCE_OXYGEN;
exports.resource_utrium = RESOURCE_UTRIUM;
exports.resource_lemergium = RESOURCE_LEMERGIUM;
exports.resource_keanium = RESOURCE_KEANIUM;
exports.resource_zynthium = RESOURCE_ZYNTHIUM;
exports.resource_catalyst = RESOURCE_CATALYST;
exports.resource_ghodium = RESOURCE_GHODIUM;

exports.resource_hydroxide = RESOURCE_HYDROXIDE;
exports.resource_zynthium_keanite = RESOURCE_ZYNTHIUM_KEANITE;
exports.resource_utrium_lemergite = RESOURCE_UTRIUM_LEMERGITE;

exports.resource_utrium_hydride = RESOURCE_UTRIUM_HYDRIDE;
exports.resource_utrium_oxide = RESOURCE_UTRIUM_OXIDE;
exports.resource_keanium_hydride = RESOURCE_KEANIUM_HYDRIDE;
exports.resource_keanium_oxide = RESOURCE_KEANIUM_OXIDE;
exports.resource_lemergium_hydride = RESOURCE_LEMERGIUM_HYDRIDE;
exports.resource_lemergium_oxide = RESOURCE_LEMERGIUM_OXIDE;
exports.resource_zynthium_hydride = RESOURCE_ZYNTHIUM_HYDRIDE;
exports.resource_zynthium_oxide = RESOURCE_ZYNTHIUM_OXIDE;
exports.resource_ghodium_hydride = RESOURCE_GHODIUM_HYDRIDE;
exports.resource_ghodium_oxide = RESOURCE_GHODIUM_OXIDE;

exports.resource_utrium_acid = RESOURCE_UTRIUM_ACID;
exports.resource_utrium_alkalide = RESOURCE_UTRIUM_ALKALIDE;
exports.resource_keanium_acid = RESOURCE_KEANIUM_ACID;
exports.resource_keanium_alkalide = RESOURCE_KEANIUM_ALKALIDE;
exports.resource_lemergium_acid = RESOURCE_LEMERGIUM_ACID;
exports.resource_lemergium_alkalide = RESOURCE_LEMERGIUM_ALKALIDE;
exports.resource_zynthium_acid = RESOURCE_ZYNTHIUM_ACID;
exports.resource_zynthium_alkalide = RESOURCE_ZYNTHIUM_ALKALIDE;
exports.resource_ghodium_acid = RESOURCE_GHODIUM_ACID;
exports.resource_ghodium_alkalide = RESOURCE_GHODIUM_ALKALIDE;

exports.resource_catalyzed_utrium_acid = RESOURCE_CATALYZED_UTRIUM_ACID;
exports.resource_catalyzed_utrium_alkalide = RESOURCE_CATALYZED_UTRIUM_ALKALIDE;
exports.resource_catalyzed_keanium_acid = RESOURCE_CATALYZED_KEANIUM_ACID;
exports.resource_catalyzed_keanium_alkalide = RESOURCE_CATALYZED_KEANIUM_ALKALIDE;
exports.resource_catalyzed_lemergium_acid = RESOURCE_CATALYZED_LEMERGIUM_ACID;
exports.resource_catalyzed_lemergium_alkalide = RESOURCE_CATALYZED_LEMERGIUM_ALKALIDE;
exports.resource_catalyzed_zynthium_acid = RESOURCE_CATALYZED_ZYNTHIUM_ACID;
exports.resource_catalyzed_zynthium_alkalide = RESOURCE_CATALYZED_ZYNTHIUM_ALKALIDE;
exports.resource_catalyzed_ghodium_acid = RESOURCE_CATALYZED_GHODIUM_ACID;
exports.resource_catalyzed_ghodium_alkalide = RESOURCE_CATALYZED_GHODIUM_ALKALIDE;
