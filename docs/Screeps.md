## Module Screeps

This helper module re-exports almost all of the types and constants used in the library.
Functions for using particular types are defined in their own modules.


### Re-exported from Screeps.Constants:

#### `StructureInfo`

``` purescript
type StructureInfo = IntMap Int
```

Number of structures available on each level

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
rampart_hits_max :: IntMap Int
```

From 2 to 8

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
extension_energy_capacity :: IntMap Int
```

From 0 to 8

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

NOTE: there is better interface Screeps.Structure.numStructures

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
controller_levels :: IntMap Int
```

1 to 8

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

#### `carry_capacity`

``` purescript
carry_capacity :: Int
```

#### `build_power`

``` purescript
build_power :: Int
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

#### `TargetPosition`

``` purescript
data TargetPosition a
  = TargetPt Int Int
  | TargetObj a
  | TargetPos RoomPosition
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

#### `FilterFn`

``` purescript
type FilterFn a = a -> Boolean
```

#### `Creep`

``` purescript
data Creep :: *
```

##### Instances
``` purescript
RoomObject Creep
Owned Creep
Eq Creep
Show Creep
HasId Creep
EncodeJson Creep
DecodeJson Creep
```

#### `Owned`

``` purescript
class Owned a 
```

##### Instances
``` purescript
Owned Creep
```

