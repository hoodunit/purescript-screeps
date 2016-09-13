## Module Screeps

This helper module re-exports almost all of the types and constants used in the library.
Functions for using particular types are defined in their own modules.


### Re-exported from Screeps.Constants:

#### `wall_hits_max`

``` purescript
wall_hits_max :: Int
```

#### `wall_hits`

``` purescript
wall_hits :: Int
```

#### `upgrade_controller_power`

``` purescript
upgrade_controller_power :: Int
```

#### `tower_power_repair`

``` purescript
tower_power_repair :: Int
```

#### `tower_power_heal`

``` purescript
tower_power_heal :: Int
```

#### `tower_power_attack`

``` purescript
tower_power_attack :: Int
```

#### `tower_optimal_range`

``` purescript
tower_optimal_range :: Int
```

#### `tower_hits`

``` purescript
tower_hits :: Int
```

#### `tower_falloff_range`

``` purescript
tower_falloff_range :: Int
```

#### `tower_falloff`

``` purescript
tower_falloff :: Number
```

#### `tower_energy_cost`

``` purescript
tower_energy_cost :: Int
```

#### `tower_capacity`

``` purescript
tower_capacity :: Int
```

#### `top_right`

``` purescript
top_right :: Direction
```

#### `top_left`

``` purescript
top_left :: Direction
```

#### `top`

``` purescript
top :: Direction
```

#### `terrain_mask_wall`

``` purescript
terrain_mask_wall :: TerrainMask
```

#### `terrain_mask_swamp`

``` purescript
terrain_mask_swamp :: TerrainMask
```

#### `terrain_mask_lava`

``` purescript
terrain_mask_lava :: TerrainMask
```

#### `terminal_send_cost`

``` purescript
terminal_send_cost :: Number
```

#### `terminal_min_send`

``` purescript
terminal_min_send :: Int
```

#### `terminal_hits`

``` purescript
terminal_hits :: Int
```

#### `terminal_capacity`

``` purescript
terminal_capacity :: Int
```

#### `structure_wall`

``` purescript
structure_wall :: StructureType
```

#### `structure_tower`

``` purescript
structure_tower :: StructureType
```

#### `structure_terminal`

``` purescript
structure_terminal :: StructureType
```

#### `structure_storage`

``` purescript
structure_storage :: StructureType
```

#### `structure_spawn`

``` purescript
structure_spawn :: StructureType
```

#### `structure_road`

``` purescript
structure_road :: StructureType
```

#### `structure_rampart`

``` purescript
structure_rampart :: StructureType
```

#### `structure_power_spawn`

``` purescript
structure_power_spawn :: StructureType
```

#### `structure_power_bank`

``` purescript
structure_power_bank :: StructureType
```

#### `structure_portal`

``` purescript
structure_portal :: StructureType
```

#### `structure_observer`

``` purescript
structure_observer :: StructureType
```

#### `structure_nuker`

``` purescript
structure_nuker :: StructureType
```

#### `structure_link`

``` purescript
structure_link :: StructureType
```

#### `structure_lab`

``` purescript
structure_lab :: StructureType
```

#### `structure_keeper_lair`

``` purescript
structure_keeper_lair :: StructureType
```

#### `structure_extractor`

``` purescript
structure_extractor :: StructureType
```

#### `structure_extension`

``` purescript
structure_extension :: StructureType
```

#### `structure_controller`

``` purescript
structure_controller :: StructureType
```

#### `structure_container`

``` purescript
structure_container :: StructureType
```

#### `storage_hits`

``` purescript
storage_hits :: Int
```

#### `storage_capacity`

``` purescript
storage_capacity :: Int
```

#### `spawn_hits`

``` purescript
spawn_hits :: Int
```

#### `spawn_energy_start`

``` purescript
spawn_energy_start :: Int
```

#### `spawn_energy_capacity`

``` purescript
spawn_energy_capacity :: Int
```

#### `source_energy_neutral_capacity`

``` purescript
source_energy_neutral_capacity :: Int
```

#### `source_energy_keeper_capacity`

``` purescript
source_energy_keeper_capacity :: Int
```

#### `source_energy_capacity`

``` purescript
source_energy_capacity :: Int
```

#### `road_wearout`

``` purescript
road_wearout :: Int
```

#### `road_hits`

``` purescript
road_hits :: Int
```

#### `road_decay_time`

``` purescript
road_decay_time :: Int
```

#### `road_decay_amount`

``` purescript
road_decay_amount :: Int
```

#### `right`

``` purescript
right :: Direction
```

#### `resource_zynthium_oxide`

``` purescript
resource_zynthium_oxide :: ResourceType
```

#### `resource_zynthium_keanite`

``` purescript
resource_zynthium_keanite :: ResourceType
```

#### `resource_zynthium_hydride`

``` purescript
resource_zynthium_hydride :: ResourceType
```

#### `resource_zynthium_alkalide`

``` purescript
resource_zynthium_alkalide :: ResourceType
```

#### `resource_zynthium_acid`

``` purescript
resource_zynthium_acid :: ResourceType
```

#### `resource_zynthium`

``` purescript
resource_zynthium :: ResourceType
```

#### `resource_utrium_oxide`

``` purescript
resource_utrium_oxide :: ResourceType
```

#### `resource_utrium_lemergite`

``` purescript
resource_utrium_lemergite :: ResourceType
```

#### `resource_utrium_hydride`

``` purescript
resource_utrium_hydride :: ResourceType
```

#### `resource_utrium_alkalide`

``` purescript
resource_utrium_alkalide :: ResourceType
```

#### `resource_utrium_acid`

``` purescript
resource_utrium_acid :: ResourceType
```

#### `resource_utrium`

``` purescript
resource_utrium :: ResourceType
```

#### `resource_power`

``` purescript
resource_power :: ResourceType
```

#### `resource_oxygen`

``` purescript
resource_oxygen :: ResourceType
```

#### `resource_lemergium_oxide`

``` purescript
resource_lemergium_oxide :: ResourceType
```

#### `resource_lemergium_hydride`

``` purescript
resource_lemergium_hydride :: ResourceType
```

#### `resource_lemergium_alkalide`

``` purescript
resource_lemergium_alkalide :: ResourceType
```

#### `resource_lemergium_acid`

``` purescript
resource_lemergium_acid :: ResourceType
```

#### `resource_lemergium`

``` purescript
resource_lemergium :: ResourceType
```

#### `resource_keanium_oxide`

``` purescript
resource_keanium_oxide :: ResourceType
```

#### `resource_keanium_hydride`

``` purescript
resource_keanium_hydride :: ResourceType
```

#### `resource_keanium_alkalide`

``` purescript
resource_keanium_alkalide :: ResourceType
```

#### `resource_keanium_acid`

``` purescript
resource_keanium_acid :: ResourceType
```

#### `resource_keanium`

``` purescript
resource_keanium :: ResourceType
```

#### `resource_hydroxide`

``` purescript
resource_hydroxide :: ResourceType
```

#### `resource_hydrogen`

``` purescript
resource_hydrogen :: ResourceType
```

#### `resource_ghodium_oxide`

``` purescript
resource_ghodium_oxide :: ResourceType
```

#### `resource_ghodium_hydride`

``` purescript
resource_ghodium_hydride :: ResourceType
```

#### `resource_ghodium_alkalide`

``` purescript
resource_ghodium_alkalide :: ResourceType
```

#### `resource_ghodium_acid`

``` purescript
resource_ghodium_acid :: ResourceType
```

#### `resource_ghodium`

``` purescript
resource_ghodium :: ResourceType
```

#### `resource_energy`

``` purescript
resource_energy :: ResourceType
```

#### `resource_catalyzed_zynthium_alkalide`

``` purescript
resource_catalyzed_zynthium_alkalide :: ResourceType
```

#### `resource_catalyzed_zynthium_acid`

``` purescript
resource_catalyzed_zynthium_acid :: ResourceType
```

#### `resource_catalyzed_utrium_alkalide`

``` purescript
resource_catalyzed_utrium_alkalide :: ResourceType
```

#### `resource_catalyzed_utrium_acid`

``` purescript
resource_catalyzed_utrium_acid :: ResourceType
```

#### `resource_catalyzed_lemergium_alkalide`

``` purescript
resource_catalyzed_lemergium_alkalide :: ResourceType
```

#### `resource_catalyzed_lemergium_acid`

``` purescript
resource_catalyzed_lemergium_acid :: ResourceType
```

#### `resource_catalyzed_keanium_alkalide`

``` purescript
resource_catalyzed_keanium_alkalide :: ResourceType
```

#### `resource_catalyzed_keanium_acid`

``` purescript
resource_catalyzed_keanium_acid :: ResourceType
```

#### `resource_catalyzed_ghodium_alkalide`

``` purescript
resource_catalyzed_ghodium_alkalide :: ResourceType
```

#### `resource_catalyzed_ghodium_acid`

``` purescript
resource_catalyzed_ghodium_acid :: ResourceType
```

#### `resource_catalyst`

``` purescript
resource_catalyst :: ResourceType
```

#### `repair_power`

``` purescript
repair_power :: Int
```

#### `repair_cost`

``` purescript
repair_cost :: Int
```

#### `ranged_heal_power`

``` purescript
ranged_heal_power :: Int
```

#### `ranged_attack_power`

``` purescript
ranged_attack_power :: Int
```

#### `rampart_hits_max`

``` purescript
rampart_hits_max :: { 2 :: Int, 3 :: Int, 4 :: Int, 5 :: Int, 6 :: Int, 7 :: Int, 8 :: Int }
```

#### `rampart_hits`

``` purescript
rampart_hits :: Int
```

#### `rampart_decay_time`

``` purescript
rampart_decay_time :: Int
```

#### `rampart_decay_amount`

``` purescript
rampart_decay_amount :: Int
```

#### `power_spawn_power_capacity`

``` purescript
power_spawn_power_capacity :: Int
```

#### `power_spawn_hits`

``` purescript
power_spawn_hits :: Int
```

#### `power_spawn_energy_ratio`

``` purescript
power_spawn_energy_ratio :: Int
```

#### `power_spawn_energy_capacity`

``` purescript
power_spawn_energy_capacity :: Int
```

#### `power_bank_hits`

``` purescript
power_bank_hits :: Int
```

#### `power_bank_hit_back`

``` purescript
power_bank_hit_back :: Number
```

#### `power_bank_decay`

``` purescript
power_bank_decay :: Int
```

#### `power_bank_capacity_min`

``` purescript
power_bank_capacity_min :: Int
```

#### `power_bank_capacity_max`

``` purescript
power_bank_capacity_max :: Int
```

#### `power_bank_capacity_crit`

``` purescript
power_bank_capacity_crit :: Number
```

#### `part_work`

``` purescript
part_work :: BodyPartType
```

#### `part_tough`

``` purescript
part_tough :: BodyPartType
```

#### `part_ranged_attack`

``` purescript
part_ranged_attack :: BodyPartType
```

#### `part_move`

``` purescript
part_move :: BodyPartType
```

#### `part_heal`

``` purescript
part_heal :: BodyPartType
```

#### `part_claim`

``` purescript
part_claim :: BodyPartType
```

#### `part_carry`

``` purescript
part_carry :: BodyPartType
```

#### `part_attack`

``` purescript
part_attack :: BodyPartType
```

#### `ok`

``` purescript
ok :: ReturnCode
```

#### `obstacle_object_types`

``` purescript
obstacle_object_types :: Array String
```

#### `observer_range`

``` purescript
observer_range :: Int
```

#### `observer_hits`

``` purescript
observer_hits :: Int
```

#### `nuker_hits`

``` purescript
nuker_hits :: Int
```

#### `nuker_ghodium_capacity`

``` purescript
nuker_ghodium_capacity :: Int
```

#### `nuker_energy_capacity`

``` purescript
nuker_energy_capacity :: Int
```

#### `nuker_cooldown`

``` purescript
nuker_cooldown :: Int
```

#### `nuke_range`

``` purescript
nuke_range :: Int
```

#### `nuke_land_time`

``` purescript
nuke_land_time :: Int
```

#### `nuke_damage`

``` purescript
nuke_damage :: { 0 :: Int, 1 :: Int, 4 :: Int }
```

#### `mode_world`

``` purescript
mode_world :: Mode
```

#### `mode_survival`

``` purescript
mode_survival :: Mode
```

#### `mode_simulation`

``` purescript
mode_simulation :: Mode
```

#### `mode_arena`

``` purescript
mode_arena :: Mode
```

#### `mineral_regen_time`

``` purescript
mineral_regen_time :: Int
```

#### `mineral_random_factor`

``` purescript
mineral_random_factor :: Int
```

#### `mineral_min_amount`

``` purescript
mineral_min_amount :: { H :: Int, O :: Int, L :: Int, K :: Int, Z :: Int, U :: Int, X :: Int }
```

#### `max_creep_size`

``` purescript
max_creep_size :: Int
```

#### `max_construction_sites`

``` purescript
max_construction_sites :: Int
```

#### `look_terrain`

``` purescript
look_terrain :: LookType Terrain
```

#### `look_structures`

``` purescript
look_structures :: LookType (Structure Unit)
```

#### `look_sources`

``` purescript
look_sources :: LookType Source
```

#### `look_resources`

``` purescript
look_resources :: LookType Resource
```

#### `look_nukes`

``` purescript
look_nukes :: LookType Nuke
```

#### `look_minerals`

``` purescript
look_minerals :: LookType Mineral
```

#### `look_flags`

``` purescript
look_flags :: LookType Flag
```

#### `look_energy`

``` purescript
look_energy :: LookType Resource
```

#### `look_creeps`

``` purescript
look_creeps :: LookType Creep
```

#### `look_construction_sites`

``` purescript
look_construction_sites :: LookType ConstructionSite
```

#### `link_loss_ratio`

``` purescript
link_loss_ratio :: Number
```

#### `link_hits_max`

``` purescript
link_hits_max :: Int
```

#### `link_hits`

``` purescript
link_hits :: Int
```

#### `link_cooldown`

``` purescript
link_cooldown :: Int
```

#### `link_capacity`

``` purescript
link_capacity :: Int
```

#### `left`

``` purescript
left :: Direction
```

#### `lab_mineral_capacity`

``` purescript
lab_mineral_capacity :: Int
```

#### `lab_hits`

``` purescript
lab_hits :: Int
```

#### `lab_energy_capacity`

``` purescript
lab_energy_capacity :: Int
```

#### `lab_cooldown`

``` purescript
lab_cooldown :: Int
```

#### `lab_boost_mineral`

``` purescript
lab_boost_mineral :: Int
```

#### `lab_boost_energy`

``` purescript
lab_boost_energy :: Int
```

#### `heal_power`

``` purescript
heal_power :: Int
```

#### `harvest_power`

``` purescript
harvest_power :: Int
```

#### `harvest_mineral_power`

``` purescript
harvest_mineral_power :: Int
```

#### `gcl_pow`

``` purescript
gcl_pow :: Number
```

#### `gcl_novice`

``` purescript
gcl_novice :: Int
```

#### `gcl_multiply`

``` purescript
gcl_multiply :: Int
```

#### `find_structures`

``` purescript
find_structures :: FindType (Structure Unit)
```

#### `find_sources_active`

``` purescript
find_sources_active :: FindType Source
```

#### `find_sources`

``` purescript
find_sources :: FindType Source
```

#### `find_nukes`

``` purescript
find_nukes :: FindType Nuke
```

#### `find_my_structures`

``` purescript
find_my_structures :: forall a. FindType (Structure a)
```

#### `find_my_spawns`

``` purescript
find_my_spawns :: FindType Spawn
```

#### `find_my_creeps`

``` purescript
find_my_creeps :: FindType Creep
```

#### `find_my_construction_sites`

``` purescript
find_my_construction_sites :: FindType ConstructionSite
```

#### `find_minerals`

``` purescript
find_minerals :: FindType Mineral
```

#### `find_hostile_structures`

``` purescript
find_hostile_structures :: FindType (Structure Unit)
```

#### `find_hostile_spawns`

``` purescript
find_hostile_spawns :: FindType Spawn
```

#### `find_hostile_creeps`

``` purescript
find_hostile_creeps :: FindType Creep
```

#### `find_hostile_construction_sites`

``` purescript
find_hostile_construction_sites :: FindType ConstructionSite
```

#### `find_flags`

``` purescript
find_flags :: FindType Flag
```

#### `find_exit_top`

``` purescript
find_exit_top :: FindType RoomPosition
```

#### `find_exit_right`

``` purescript
find_exit_right :: FindType RoomPosition
```

#### `find_exit_left`

``` purescript
find_exit_left :: FindType RoomPosition
```

#### `find_exit_bottom`

``` purescript
find_exit_bottom :: FindType RoomPosition
```

#### `find_exit`

``` purescript
find_exit :: FindType RoomPosition
```

#### `find_dropped_resources`

``` purescript
find_dropped_resources :: FindType Resource
```

#### `find_dropped_energy`

``` purescript
find_dropped_energy :: FindType Resource
```

#### `find_creeps`

``` purescript
find_creeps :: FindType Creep
```

#### `find_construction_sites`

``` purescript
find_construction_sites :: FindType ConstructionSite
```

#### `extractor_hits`

``` purescript
extractor_hits :: Int
```

#### `extension_hits`

``` purescript
extension_hits :: Int
```

#### `extension_energy_capacity`

``` purescript
extension_energy_capacity :: { 0 :: Int, 1 :: Int, 2 :: Int, 3 :: Int, 4 :: Int, 5 :: Int, 6 :: Int, 7 :: Int, 8 :: Int }
```

#### `err_tired`

``` purescript
err_tired :: ReturnCode
```

#### `err_rcl_not_enough`

``` purescript
err_rcl_not_enough :: ReturnCode
```

#### `err_not_owner`

``` purescript
err_not_owner :: ReturnCode
```

#### `err_not_in_range`

``` purescript
err_not_in_range :: ReturnCode
```

#### `err_not_found`

``` purescript
err_not_found :: ReturnCode
```

#### `err_not_enough_resources`

``` purescript
err_not_enough_resources :: ReturnCode
```

#### `err_not_enough_extensions`

``` purescript
err_not_enough_extensions :: ReturnCode
```

#### `err_not_enough_energy`

``` purescript
err_not_enough_energy :: ReturnCode
```

#### `err_no_path`

``` purescript
err_no_path :: ReturnCode
```

#### `err_no_bodypart`

``` purescript
err_no_bodypart :: ReturnCode
```

#### `err_name_exists`

``` purescript
err_name_exists :: ReturnCode
```

#### `err_invalid_target`

``` purescript
err_invalid_target :: ReturnCode
```

#### `err_invalid_args`

``` purescript
err_invalid_args :: ReturnCode
```

#### `err_gcl_not_enough`

``` purescript
err_gcl_not_enough :: ReturnCode
```

#### `err_full`

``` purescript
err_full :: ReturnCode
```

#### `err_busy`

``` purescript
err_busy :: ReturnCode
```

#### `energy_regen_time`

``` purescript
energy_regen_time :: Int
```

#### `energy_decay`

``` purescript
energy_decay :: Int
```

#### `dismantle_power`

``` purescript
dismantle_power :: Int
```

#### `dismantle_cost`

``` purescript
dismantle_cost :: Int
```

#### `creep_spawn_time`

``` purescript
creep_spawn_time :: Int
```

#### `creep_life_time`

``` purescript
creep_life_time :: Int
```

#### `creep_corpse_rate`

``` purescript
creep_corpse_rate :: Int
```

#### `creep_claim_life_time`

``` purescript
creep_claim_life_time :: Int
```

#### `controller_structures`

``` purescript
controller_structures :: { spawn :: StructureInfo, extension :: StructureInfo, road :: StructureInfo, constructedWall :: StructureInfo, rampart :: StructureInfo, link :: StructureInfo, storage :: StructureInfo, tower :: StructureInfo, observer :: StructureInfo, powerSpawn :: StructureInfo, extractor :: StructureInfo, lab :: StructureInfo, terminal :: StructureInfo, container :: StructureInfo, nuker :: StructureInfo }
```

#### `controller_reserve_max`

``` purescript
controller_reserve_max :: Int
```

#### `controller_reserve`

``` purescript
controller_reserve :: Int
```

#### `controller_max_upgrade_per_tick`

``` purescript
controller_max_upgrade_per_tick :: Int
```

#### `controller_levels`

``` purescript
controller_levels :: { 1 :: Int, 2 :: Int, 3 :: Int, 4 :: Int, 5 :: Int, 6 :: Int, 7 :: Int }
```

#### `controller_downgrade`

``` purescript
controller_downgrade :: StructureInfo
```

#### `controller_claim_downgrade`

``` purescript
controller_claim_downgrade :: Number
```

#### `controller_attack_blocked_upgrade`

``` purescript
controller_attack_blocked_upgrade :: Int
```

#### `container_hits`

``` purescript
container_hits :: Int
```

#### `container_decay_time_owned`

``` purescript
container_decay_time_owned :: Int
```

#### `container_decay_time`

``` purescript
container_decay_time :: Int
```

#### `container_decay`

``` purescript
container_decay :: Int
```

#### `container_capacity`

``` purescript
container_capacity :: Int
```

#### `construction_cost_road_swamp_ratio`

``` purescript
construction_cost_road_swamp_ratio :: Int
```

#### `construction_cost`

``` purescript
construction_cost :: { spawn :: Int, extension :: Int, road :: Int, constructedWall :: Int, rampart :: Int, link :: Int, storage :: Int, tower :: Int, observer :: Int, powerSpawn :: Int, extractor :: Int, lab :: Int, terminal :: Int, container :: Int, nuker :: Int }
```

#### `color_yellow`

``` purescript
color_yellow :: Color
```

#### `color_white`

``` purescript
color_white :: Color
```

#### `color_red`

``` purescript
color_red :: Color
```

#### `color_purple`

``` purescript
color_purple :: Color
```

#### `color_orange`

``` purescript
color_orange :: Color
```

#### `color_grey`

``` purescript
color_grey :: Color
```

#### `color_green`

``` purescript
color_green :: Color
```

#### `color_cyan`

``` purescript
color_cyan :: Color
```

#### `color_brown`

``` purescript
color_brown :: Color
```

#### `color_blue`

``` purescript
color_blue :: Color
```

#### `carry_capacity`

``` purescript
carry_capacity :: Int
```

#### `build_power`

``` purescript
build_power :: Int
```

#### `bottom_right`

``` purescript
bottom_right :: Direction
```

#### `bottom_left`

``` purescript
bottom_left :: Direction
```

#### `bottom`

``` purescript
bottom :: Direction
```

#### `bodypart_cost`

``` purescript
bodypart_cost :: { move :: Int, work :: Int, attack :: Int, carry :: Int, heal :: Int, ranged_attack :: Int, tough :: Int, claim :: Int }
```

#### `attack_power`

``` purescript
attack_power :: Int
```

### Re-exported from Screeps.Effects:

#### `TIME`

``` purescript
data TIME :: !
```

For time-dependent functions where the output changes depending on when it is called.

#### `TICK`

``` purescript
data TICK :: !
```

Global scope is cleared periodically, so values depending on global variables like Game and Memory need to be fetched dynamically. This effect enforces this.

#### `MEMORY`

``` purescript
data MEMORY :: !
```

Memory accesses are tagged with this effect.

#### `CMD`

``` purescript
data CMD :: !
```

Tag for functions which execute a Screeps command as a side effect e.g. to move a creep.

### Re-exported from Screeps.Types:

#### `WorldMap`

``` purescript
data WorldMap :: *
```

#### `Wall`

``` purescript
type Wall = OwnedStructure RawWall
```

#### `Tower`

``` purescript
type Tower = OwnedStructure RawTower
```

#### `TerrainMask`

``` purescript
newtype TerrainMask
  = TerrainMask Int
```

##### Instances
``` purescript
Generic TerrainMask
Eq TerrainMask
Show TerrainMask
```

#### `Terrain`

``` purescript
newtype Terrain
  = Terrain String
```

##### Instances
``` purescript
Generic Terrain
Eq Terrain
Show Terrain
```

#### `Terminal`

``` purescript
type Terminal = OwnedStructure RawTerminal
```

#### `TargetPosition`

``` purescript
data TargetPosition a
  = TargetPt Int Int
  | TargetObj (RoomObject a)
  | TargetPos RoomPosition
```

#### `StructureType`

``` purescript
newtype StructureType
  = StructureType String
```

##### Instances
``` purescript
Generic StructureType
Eq StructureType
Show StructureType
```

#### `StructureInfo`

``` purescript
type StructureInfo = StrMap Int
```

#### `Structure`

``` purescript
type Structure a = RoomObject (RawStructure a)
```

#### `Storage`

``` purescript
type Storage = OwnedStructure RawStorage
```

#### `Spawn`

``` purescript
type Spawn = OwnedStructure RawSpawn
```

#### `Source`

``` purescript
type Source = RoomObject RawSource
```

#### `RoomPosition`

``` purescript
data RoomPosition :: *
```

#### `RoomObject`

``` purescript
type RoomObject a = RawRoomObject a
```

#### `Room`

``` purescript
data Room :: *
```

#### `Road`

``` purescript
type Road = OwnedStructure RawRoad
```

#### `ReturnCode`

``` purescript
newtype ReturnCode
  = ReturnCode Int
```

##### Instances
``` purescript
Generic ReturnCode
Eq ReturnCode
Show ReturnCode
```

#### `ResourceType`

``` purescript
newtype ResourceType
  = ResourceType String
```

##### Instances
``` purescript
Generic ResourceType
Eq ResourceType
Show ResourceType
```

#### `Resource`

``` purescript
type Resource = RoomObject RawResource
```

#### `RawWall`

``` purescript
data RawWall :: *
```

#### `RawTower`

``` purescript
data RawTower :: *
```

#### `RawTerminal`

``` purescript
data RawTerminal :: *
```

#### `RawStructure`

``` purescript
data RawStructure :: * -> *
```

#### `RawStorage`

``` purescript
data RawStorage :: *
```

#### `RawSpawn`

``` purescript
data RawSpawn :: *
```

#### `RawSource`

``` purescript
data RawSource :: *
```

#### `RawRoomObject`

``` purescript
data RawRoomObject :: * -> *
```

#### `RawRoad`

``` purescript
data RawRoad :: *
```

#### `RawResource`

``` purescript
data RawResource :: *
```

#### `RawRampart`

``` purescript
data RawRampart :: *
```

#### `RawPowerSpawn`

``` purescript
data RawPowerSpawn :: *
```

#### `RawPowerBank`

``` purescript
data RawPowerBank :: *
```

#### `RawPortal`

``` purescript
data RawPortal :: *
```

#### `RawOwnedStructure`

``` purescript
data RawOwnedStructure :: * -> *
```

#### `RawObserver`

``` purescript
data RawObserver :: *
```

#### `RawNuker`

``` purescript
data RawNuker :: *
```

#### `RawNuke`

``` purescript
data RawNuke :: *
```

#### `RawMineral`

``` purescript
data RawMineral :: *
```

#### `RawLink`

``` purescript
data RawLink :: *
```

#### `RawLab`

``` purescript
data RawLab :: *
```

#### `RawKeeperLair`

``` purescript
data RawKeeperLair :: *
```

#### `RawFlag`

``` purescript
data RawFlag :: *
```

#### `RawExtractor`

``` purescript
data RawExtractor :: *
```

#### `RawExtension`

``` purescript
data RawExtension :: *
```

#### `RawCreep`

``` purescript
data RawCreep :: *
```

#### `RawController`

``` purescript
data RawController :: *
```

#### `RawContainer`

``` purescript
data RawContainer :: *
```

#### `RawConstructionSite`

``` purescript
data RawConstructionSite :: *
```

#### `Rampart`

``` purescript
type Rampart = OwnedStructure RawRampart
```

#### `PowerSpawn`

``` purescript
type PowerSpawn = OwnedStructure RawPowerSpawn
```

#### `PowerBank`

``` purescript
type PowerBank = OwnedStructure RawPowerBank
```

#### `Portal`

``` purescript
type Portal = OwnedStructure RawPortal
```

#### `PathStep`

``` purescript
type PathStep = { x :: Int, y :: Int, dx :: Number, dy :: Number, direction :: Direction }
```

#### `Path`

``` purescript
type Path = Array PathStep
```

#### `OwnedStructure`

``` purescript
type OwnedStructure a = Structure (RawOwnedStructure a)
```

#### `Observer`

``` purescript
type Observer = OwnedStructure RawObserver
```

#### `Nuker`

``` purescript
type Nuker = OwnedStructure RawNuker
```

#### `Nuke`

``` purescript
type Nuke = RoomObject RawNuke
```

#### `Mode`

``` purescript
newtype Mode
  = Mode String
```

##### Instances
``` purescript
Generic Mode
Eq Mode
Show Mode
```

#### `Mineral`

``` purescript
type Mineral = RoomObject RawMineral
```

#### `Market`

``` purescript
data Market :: *
```

#### `LookType`

``` purescript
newtype LookType a
  = LookType String
```

#### `Link`

``` purescript
type Link = OwnedStructure RawLink
```

#### `Lab`

``` purescript
type Lab = OwnedStructure RawLab
```

#### `KeeperLair`

``` purescript
type KeeperLair = OwnedStructure RawKeeperLair
```

#### `Id`

``` purescript
newtype Id a
  = Id String
```

##### Instances
``` purescript
Generic (Id a)
Eq (Id a)
Show (Id a)
DecodeJson (Id a)
EncodeJson (Id a)
```

#### `GameGlobal`

``` purescript
data GameGlobal :: *
```

#### `Flag`

``` purescript
type Flag = RoomObject RawFlag
```

#### `FindType`

``` purescript
newtype FindType a
  = FindType Int
```

#### `FindContext`

``` purescript
data FindContext a
  = OfType (FindType a)
  | OfObj (Array a)
  | OfPos (Array RoomPosition)
```

#### `FilterFn`

``` purescript
type FilterFn a = a -> Boolean
```

#### `Extractor`

``` purescript
type Extractor = OwnedStructure RawExtractor
```

#### `Extension`

``` purescript
type Extension = OwnedStructure RawExtension
```

#### `Direction`

``` purescript
newtype Direction
  = Direction Int
```

##### Instances
``` purescript
Generic Direction
Eq Direction
Show Direction
```

#### `Creep`

``` purescript
type Creep = RoomObject RawCreep
```

#### `Controller`

``` purescript
type Controller = OwnedStructure RawController
```

#### `Container`

``` purescript
type Container = Structure RawContainer
```

#### `ConstructionSite`

``` purescript
type ConstructionSite = RoomObject RawConstructionSite
```

#### `Color`

``` purescript
newtype Color
  = Color Int
```

##### Instances
``` purescript
Generic Color
Eq Color
Show Color
```

#### `BodyPartType`

``` purescript
newtype BodyPartType
  = BodyPartType String
```

##### Instances
``` purescript
Generic BodyPartType
Eq BodyPartType
Show BodyPartType
```

