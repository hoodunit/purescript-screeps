## Module Screeps.Types

#### `CMD`

``` purescript
data CMD :: !
```

#### `MEMORY`

``` purescript
data MEMORY :: !
```

#### `TIME`

``` purescript
data TIME :: !
```

#### `RawOwnedStructure`

``` purescript
data RawOwnedStructure :: * -> *
```

#### `RawRoomObject`

``` purescript
data RawRoomObject :: * -> *
```

#### `RawStructure`

``` purescript
data RawStructure :: * -> *
```

#### `RoomObject`

``` purescript
type RoomObject a = RawRoomObject a
```

#### `Structure`

``` purescript
type Structure a = RoomObject (RawStructure a)
```

#### `OwnedStructure`

``` purescript
type OwnedStructure a = Structure (RawOwnedStructure a)
```

#### `RawContainer`

``` purescript
data RawContainer :: *
```

#### `RawController`

``` purescript
data RawController :: *
```

#### `RawExtension`

``` purescript
data RawExtension :: *
```

#### `RawExtractor`

``` purescript
data RawExtractor :: *
```

#### `RawKeeperLair`

``` purescript
data RawKeeperLair :: *
```

#### `RawLab`

``` purescript
data RawLab :: *
```

#### `RawLink`

``` purescript
data RawLink :: *
```

#### `RawNuker`

``` purescript
data RawNuker :: *
```

#### `RawObserver`

``` purescript
data RawObserver :: *
```

#### `RawPortal`

``` purescript
data RawPortal :: *
```

#### `RawPowerBank`

``` purescript
data RawPowerBank :: *
```

#### `RawPowerSpawn`

``` purescript
data RawPowerSpawn :: *
```

#### `RawRampart`

``` purescript
data RawRampart :: *
```

#### `RawRoad`

``` purescript
data RawRoad :: *
```

#### `RawSpawn`

``` purescript
data RawSpawn :: *
```

#### `RawStorage`

``` purescript
data RawStorage :: *
```

#### `RawTerminal`

``` purescript
data RawTerminal :: *
```

#### `RawTower`

``` purescript
data RawTower :: *
```

#### `RawWall`

``` purescript
data RawWall :: *
```

#### `Container`

``` purescript
type Container = Structure RawContainer
```

#### `Controller`

``` purescript
type Controller = OwnedStructure RawController
```

#### `Extension`

``` purescript
type Extension = OwnedStructure RawExtension
```

#### `Extractor`

``` purescript
type Extractor = OwnedStructure RawExtractor
```

#### `KeeperLair`

``` purescript
type KeeperLair = OwnedStructure RawKeeperLair
```

#### `Lab`

``` purescript
type Lab = OwnedStructure RawLab
```

#### `Link`

``` purescript
type Link = OwnedStructure RawLink
```

#### `Nuker`

``` purescript
type Nuker = OwnedStructure RawNuker
```

#### `Observer`

``` purescript
type Observer = OwnedStructure RawObserver
```

#### `Portal`

``` purescript
type Portal = OwnedStructure RawPortal
```

#### `PowerBank`

``` purescript
type PowerBank = OwnedStructure RawPowerBank
```

#### `PowerSpawn`

``` purescript
type PowerSpawn = OwnedStructure RawPowerSpawn
```

#### `Rampart`

``` purescript
type Rampart = OwnedStructure RawRampart
```

#### `Road`

``` purescript
type Road = OwnedStructure RawRoad
```

#### `Spawn`

``` purescript
type Spawn = OwnedStructure RawSpawn
```

#### `Storage`

``` purescript
type Storage = OwnedStructure RawStorage
```

#### `Terminal`

``` purescript
type Terminal = OwnedStructure RawTerminal
```

#### `Tower`

``` purescript
type Tower = OwnedStructure RawTower
```

#### `Wall`

``` purescript
type Wall = OwnedStructure RawWall
```

#### `Room`

``` purescript
data Room :: *
```

#### `RoomPosition`

``` purescript
data RoomPosition :: *
```

#### `RawCreep`

``` purescript
data RawCreep :: *
```

#### `Creep`

``` purescript
type Creep = RoomObject RawCreep
```

#### `RawConstructionSite`

``` purescript
data RawConstructionSite :: *
```

#### `RawFlag`

``` purescript
data RawFlag :: *
```

#### `RawMineral`

``` purescript
data RawMineral :: *
```

#### `RawNuke`

``` purescript
data RawNuke :: *
```

#### `RawResource`

``` purescript
data RawResource :: *
```

#### `RawSource`

``` purescript
data RawSource :: *
```

#### `ConstructionSite`

``` purescript
type ConstructionSite = RoomObject RawConstructionSite
```

#### `Flag`

``` purescript
type Flag = RoomObject RawFlag
```

#### `Mineral`

``` purescript
type Mineral = RoomObject RawMineral
```

#### `Nuke`

``` purescript
type Nuke = RoomObject RawNuke
```

#### `Resource`

``` purescript
type Resource = RoomObject RawResource
```

#### `Source`

``` purescript
type Source = RoomObject RawSource
```

#### `WorldMap`

``` purescript
data WorldMap :: *
```

#### `Market`

``` purescript
data Market :: *
```

#### `Store`

``` purescript
data Store :: *
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

#### `LookType`

``` purescript
newtype LookType a
  = LookType String
```

#### `FindType`

``` purescript
newtype FindType a
  = FindType Int
```

#### `StructureInfo`

``` purescript
type StructureInfo = { 1 :: Int, 2 :: Int, 3 :: Int, 4 :: Int, 5 :: Int, 6 :: Int, 7 :: Int, 8 :: Int }
```

#### `Path`

``` purescript
type Path = Array PathStep
```

#### `CreepCargo`

``` purescript
data CreepCargo :: *
```

#### `BodyPart`

``` purescript
type BodyPart = { boost :: Maybe String, type :: BodyPartType, hits :: Int }
```

#### `Gcl`

``` purescript
type Gcl = { level :: Int, progress :: Int, progressTotal :: Int }
```

#### `Cpu`

``` purescript
type Cpu = { limit :: Int, tickLimit :: Int, bucket :: Int }
```

#### `PathStep`

``` purescript
type PathStep = { x :: Int, y :: Int, dx :: Number, dy :: Number, direction :: Direction }
```

#### `SpawningInfo`

``` purescript
type SpawningInfo = { name :: String, needTime :: Int, remainingTime :: Int }
```

#### `ok`

``` purescript
ok :: ReturnCode
```

#### `err_not_owner`

``` purescript
err_not_owner :: ReturnCode
```

#### `err_no_path`

``` purescript
err_no_path :: ReturnCode
```

#### `err_name_exists`

``` purescript
err_name_exists :: ReturnCode
```

#### `err_busy`

``` purescript
err_busy :: ReturnCode
```

#### `err_not_found`

``` purescript
err_not_found :: ReturnCode
```

#### `err_not_enough_energy`

``` purescript
err_not_enough_energy :: ReturnCode
```

#### `err_not_enough_resources`

``` purescript
err_not_enough_resources :: ReturnCode
```

#### `err_invalid_target`

``` purescript
err_invalid_target :: ReturnCode
```

#### `err_full`

``` purescript
err_full :: ReturnCode
```

#### `err_not_in_range`

``` purescript
err_not_in_range :: ReturnCode
```

#### `err_invalid_args`

``` purescript
err_invalid_args :: ReturnCode
```

#### `err_tired`

``` purescript
err_tired :: ReturnCode
```

#### `err_no_bodypart`

``` purescript
err_no_bodypart :: ReturnCode
```

#### `err_not_enough_extensions`

``` purescript
err_not_enough_extensions :: ReturnCode
```

#### `err_rcl_not_enough`

``` purescript
err_rcl_not_enough :: ReturnCode
```

#### `err_gcl_not_enough`

``` purescript
err_gcl_not_enough :: ReturnCode
```

#### `find_exit_top`

``` purescript
find_exit_top :: FindType RoomPosition
```

#### `find_exit_right`

``` purescript
find_exit_right :: FindType RoomPosition
```

#### `find_exit_bottom`

``` purescript
find_exit_bottom :: FindType RoomPosition
```

#### `find_exit_left`

``` purescript
find_exit_left :: FindType RoomPosition
```

#### `find_exit`

``` purescript
find_exit :: FindType RoomPosition
```

#### `find_creeps`

``` purescript
find_creeps :: FindType Creep
```

#### `find_my_creeps`

``` purescript
find_my_creeps :: FindType Creep
```

#### `find_hostile_creeps`

``` purescript
find_hostile_creeps :: FindType Creep
```

#### `find_sources_active`

``` purescript
find_sources_active :: FindType Source
```

#### `find_sources`

``` purescript
find_sources :: FindType Source
```

#### `find_dropped_energy`

``` purescript
find_dropped_energy :: FindType Resource
```

#### `find_dropped_resources`

``` purescript
find_dropped_resources :: FindType Resource
```

#### `find_structures`

``` purescript
find_structures :: FindType (Structure Unit)
```

#### `find_my_structures`

``` purescript
find_my_structures :: forall a. FindType (Structure a)
```

#### `find_hostile_structures`

``` purescript
find_hostile_structures :: FindType (Structure Unit)
```

#### `find_flags`

``` purescript
find_flags :: FindType Flag
```

#### `find_construction_sites`

``` purescript
find_construction_sites :: FindType ConstructionSite
```

#### `find_my_spawns`

``` purescript
find_my_spawns :: FindType Spawn
```

#### `find_hostile_spawns`

``` purescript
find_hostile_spawns :: FindType Spawn
```

#### `find_my_construction_sites`

``` purescript
find_my_construction_sites :: FindType ConstructionSite
```

#### `find_hostile_construction_sites`

``` purescript
find_hostile_construction_sites :: FindType ConstructionSite
```

#### `find_minerals`

``` purescript
find_minerals :: FindType Mineral
```

#### `find_nukes`

``` purescript
find_nukes :: FindType Nuke
```

#### `top`

``` purescript
top :: Direction
```

#### `top_right`

``` purescript
top_right :: Direction
```

#### `right`

``` purescript
right :: Direction
```

#### `bottom_right`

``` purescript
bottom_right :: Direction
```

#### `bottom`

``` purescript
bottom :: Direction
```

#### `bottom_left`

``` purescript
bottom_left :: Direction
```

#### `left`

``` purescript
left :: Direction
```

#### `top_left`

``` purescript
top_left :: Direction
```

#### `color_red`

``` purescript
color_red :: Color
```

#### `color_purple`

``` purescript
color_purple :: Color
```

#### `color_blue`

``` purescript
color_blue :: Color
```

#### `color_cyan`

``` purescript
color_cyan :: Color
```

#### `color_green`

``` purescript
color_green :: Color
```

#### `color_yellow`

``` purescript
color_yellow :: Color
```

#### `color_orange`

``` purescript
color_orange :: Color
```

#### `color_brown`

``` purescript
color_brown :: Color
```

#### `color_grey`

``` purescript
color_grey :: Color
```

#### `color_white`

``` purescript
color_white :: Color
```

#### `look_creeps`

``` purescript
look_creeps :: LookType Creep
```

#### `look_energy`

``` purescript
look_energy :: LookType Resource
```

#### `look_resources`

``` purescript
look_resources :: LookType Resource
```

#### `look_sources`

``` purescript
look_sources :: LookType Source
```

#### `look_minerals`

``` purescript
look_minerals :: LookType Mineral
```

#### `look_structures`

``` purescript
look_structures :: LookType (Structure Unit)
```

#### `look_flags`

``` purescript
look_flags :: LookType Flag
```

#### `look_construction_sites`

``` purescript
look_construction_sites :: LookType ConstructionSite
```

#### `look_nukes`

``` purescript
look_nukes :: LookType Nuke
```

#### `look_terrain`

``` purescript
look_terrain :: LookType Terrain
```

#### `obstacle_object_types`

``` purescript
obstacle_object_types :: Array String
```

#### `part_move`

``` purescript
part_move :: BodyPartType
```

#### `part_work`

``` purescript
part_work :: BodyPartType
```

#### `part_carry`

``` purescript
part_carry :: BodyPartType
```

#### `part_attack`

``` purescript
part_attack :: BodyPartType
```

#### `part_ranged_attack`

``` purescript
part_ranged_attack :: BodyPartType
```

#### `part_tough`

``` purescript
part_tough :: BodyPartType
```

#### `part_heal`

``` purescript
part_heal :: BodyPartType
```

#### `part_claim`

``` purescript
part_claim :: BodyPartType
```

#### `bodypart_cost`

``` purescript
bodypart_cost :: { move :: Int, work :: Int, attack :: Int, carry :: Int, heal :: Int, ranged_attack :: Int, tough :: Int, claim :: Int }
```

#### `creep_life_time`

``` purescript
creep_life_time :: Int
```

#### `creep_claim_life_time`

``` purescript
creep_claim_life_time :: Int
```

#### `creep_corpse_rate`

``` purescript
creep_corpse_rate :: Int
```

#### `carry_capacity`

``` purescript
carry_capacity :: Int
```

#### `harvest_power`

``` purescript
harvest_power :: Int
```

#### `harvest_mineral_power`

``` purescript
harvest_mineral_power :: Int
```

#### `repair_power`

``` purescript
repair_power :: Int
```

#### `dismantle_power`

``` purescript
dismantle_power :: Int
```

#### `build_power`

``` purescript
build_power :: Int
```

#### `attack_power`

``` purescript
attack_power :: Int
```

#### `upgrade_controller_power`

``` purescript
upgrade_controller_power :: Int
```

#### `ranged_attack_power`

``` purescript
ranged_attack_power :: Int
```

#### `heal_power`

``` purescript
heal_power :: Int
```

#### `ranged_heal_power`

``` purescript
ranged_heal_power :: Int
```

#### `repair_cost`

``` purescript
repair_cost :: Int
```

#### `dismantle_cost`

``` purescript
dismantle_cost :: Int
```

#### `rampart_decay_amount`

``` purescript
rampart_decay_amount :: Int
```

#### `rampart_decay_time`

``` purescript
rampart_decay_time :: Int
```

#### `rampart_hits`

``` purescript
rampart_hits :: Int
```

#### `rampart_hits_max`

``` purescript
rampart_hits_max :: { 2 :: Int, 3 :: Int, 4 :: Int, 5 :: Int, 6 :: Int, 7 :: Int, 8 :: Int }
```

#### `energy_regen_time`

``` purescript
energy_regen_time :: Int
```

#### `energy_decay`

``` purescript
energy_decay :: Int
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

#### `creep_spawn_time`

``` purescript
creep_spawn_time :: Int
```

#### `source_energy_capacity`

``` purescript
source_energy_capacity :: Int
```

#### `source_energy_neutral_capacity`

``` purescript
source_energy_neutral_capacity :: Int
```

#### `source_energy_keeper_capacity`

``` purescript
source_energy_keeper_capacity :: Int
```

#### `wall_hits`

``` purescript
wall_hits :: Int
```

#### `wall_hits_max`

``` purescript
wall_hits_max :: Int
```

#### `extension_hits`

``` purescript
extension_hits :: Int
```

#### `extension_energy_capacity`

``` purescript
extension_energy_capacity :: { 0 :: Int, 1 :: Int, 2 :: Int, 3 :: Int, 4 :: Int, 5 :: Int, 6 :: Int, 7 :: Int, 8 :: Int }
```

#### `road_hits`

``` purescript
road_hits :: Int
```

#### `road_wearout`

``` purescript
road_wearout :: Int
```

#### `road_decay_amount`

``` purescript
road_decay_amount :: Int
```

#### `road_decay_time`

``` purescript
road_decay_time :: Int
```

#### `link_hits`

``` purescript
link_hits :: Int
```

#### `link_hits_max`

``` purescript
link_hits_max :: Int
```

#### `link_capacity`

``` purescript
link_capacity :: Int
```

#### `link_cooldown`

``` purescript
link_cooldown :: Int
```

#### `link_loss_ratio`

``` purescript
link_loss_ratio :: Number
```

#### `storage_capacity`

``` purescript
storage_capacity :: Int
```

#### `storage_hits`

``` purescript
storage_hits :: Int
```

#### `structure_spawn`

``` purescript
structure_spawn :: StructureType
```

#### `structure_extension`

``` purescript
structure_extension :: StructureType
```

#### `structure_road`

``` purescript
structure_road :: StructureType
```

#### `structure_wall`

``` purescript
structure_wall :: StructureType
```

#### `structure_rampart`

``` purescript
structure_rampart :: StructureType
```

#### `structure_keeper_lair`

``` purescript
structure_keeper_lair :: StructureType
```

#### `structure_portal`

``` purescript
structure_portal :: StructureType
```

#### `structure_controller`

``` purescript
structure_controller :: StructureType
```

#### `structure_link`

``` purescript
structure_link :: StructureType
```

#### `structure_storage`

``` purescript
structure_storage :: StructureType
```

#### `structure_tower`

``` purescript
structure_tower :: StructureType
```

#### `structure_observer`

``` purescript
structure_observer :: StructureType
```

#### `structure_power_bank`

``` purescript
structure_power_bank :: StructureType
```

#### `structure_power_spawn`

``` purescript
structure_power_spawn :: StructureType
```

#### `structure_extractor`

``` purescript
structure_extractor :: StructureType
```

#### `structure_lab`

``` purescript
structure_lab :: StructureType
```

#### `structure_terminal`

``` purescript
structure_terminal :: StructureType
```

#### `structure_container`

``` purescript
structure_container :: StructureType
```

#### `structure_nuker`

``` purescript
structure_nuker :: StructureType
```

#### `construction_cost`

``` purescript
construction_cost :: { spawn :: Int, extension :: Int, road :: Int, constructedWall :: Int, rampart :: Int, link :: Int, storage :: Int, tower :: Int, observer :: Int, powerSpawn :: Int, extractor :: Int, lab :: Int, terminal :: Int, container :: Int, nuker :: Int }
```

#### `construction_cost_road_swamp_ratio`

``` purescript
construction_cost_road_swamp_ratio :: Int
```

#### `controller_levels`

``` purescript
controller_levels :: { 1 :: Int, 2 :: Int, 3 :: Int, 4 :: Int, 5 :: Int, 6 :: Int, 7 :: Int }
```

#### `controller_structures`

``` purescript
controller_structures :: { spawn :: StructureInfo, extension :: StructureInfo, road :: StructureInfo, constructedWall :: StructureInfo, rampart :: StructureInfo, link :: StructureInfo, storage :: StructureInfo, tower :: StructureInfo, observer :: StructureInfo, powerSpawn :: StructureInfo, extractor :: StructureInfo, lab :: StructureInfo, terminal :: StructureInfo, container :: StructureInfo, nuker :: StructureInfo }
```

#### `controller_downgrade`

``` purescript
controller_downgrade :: StructureInfo
```

#### `controller_claim_downgrade`

``` purescript
controller_claim_downgrade :: Number
```

#### `controller_reserve`

``` purescript
controller_reserve :: Int
```

#### `controller_reserve_max`

``` purescript
controller_reserve_max :: Int
```

#### `controller_max_upgrade_per_tick`

``` purescript
controller_max_upgrade_per_tick :: Int
```

#### `controller_attack_blocked_upgrade`

``` purescript
controller_attack_blocked_upgrade :: Int
```

#### `tower_hits`

``` purescript
tower_hits :: Int
```

#### `tower_capacity`

``` purescript
tower_capacity :: Int
```

#### `tower_energy_cost`

``` purescript
tower_energy_cost :: Int
```

#### `tower_power_attack`

``` purescript
tower_power_attack :: Int
```

#### `tower_power_heal`

``` purescript
tower_power_heal :: Int
```

#### `tower_power_repair`

``` purescript
tower_power_repair :: Int
```

#### `tower_optimal_range`

``` purescript
tower_optimal_range :: Int
```

#### `tower_falloff_range`

``` purescript
tower_falloff_range :: Int
```

#### `tower_falloff`

``` purescript
tower_falloff :: Number
```

#### `observer_hits`

``` purescript
observer_hits :: Int
```

#### `observer_range`

``` purescript
observer_range :: Int
```

#### `power_bank_hits`

``` purescript
power_bank_hits :: Int
```

#### `power_bank_capacity_max`

``` purescript
power_bank_capacity_max :: Int
```

#### `power_bank_capacity_min`

``` purescript
power_bank_capacity_min :: Int
```

#### `power_bank_capacity_crit`

``` purescript
power_bank_capacity_crit :: Number
```

#### `power_bank_decay`

``` purescript
power_bank_decay :: Int
```

#### `power_bank_hit_back`

``` purescript
power_bank_hit_back :: Number
```

#### `power_spawn_hits`

``` purescript
power_spawn_hits :: Int
```

#### `power_spawn_energy_capacity`

``` purescript
power_spawn_energy_capacity :: Int
```

#### `power_spawn_power_capacity`

``` purescript
power_spawn_power_capacity :: Int
```

#### `power_spawn_energy_ratio`

``` purescript
power_spawn_energy_ratio :: Int
```

#### `extractor_hits`

``` purescript
extractor_hits :: Int
```

#### `lab_hits`

``` purescript
lab_hits :: Int
```

#### `lab_mineral_capacity`

``` purescript
lab_mineral_capacity :: Int
```

#### `lab_energy_capacity`

``` purescript
lab_energy_capacity :: Int
```

#### `lab_boost_energy`

``` purescript
lab_boost_energy :: Int
```

#### `lab_boost_mineral`

``` purescript
lab_boost_mineral :: Int
```

#### `lab_cooldown`

``` purescript
lab_cooldown :: Int
```

#### `gcl_pow`

``` purescript
gcl_pow :: Number
```

#### `gcl_multiply`

``` purescript
gcl_multiply :: Int
```

#### `gcl_novice`

``` purescript
gcl_novice :: Int
```

#### `mode_simulation`

``` purescript
mode_simulation :: Mode
```

#### `mode_survival`

``` purescript
mode_survival :: Mode
```

#### `mode_world`

``` purescript
mode_world :: Mode
```

#### `mode_arena`

``` purescript
mode_arena :: Mode
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

#### `max_construction_sites`

``` purescript
max_construction_sites :: Int
```

#### `max_creep_size`

``` purescript
max_creep_size :: Int
```

#### `mineral_regen_time`

``` purescript
mineral_regen_time :: Int
```

#### `mineral_min_amount`

``` purescript
mineral_min_amount :: { H :: Int, O :: Int, L :: Int, K :: Int, Z :: Int, U :: Int, X :: Int }
```

#### `mineral_random_factor`

``` purescript
mineral_random_factor :: Int
```

#### `terminal_capacity`

``` purescript
terminal_capacity :: Int
```

#### `terminal_hits`

``` purescript
terminal_hits :: Int
```

#### `terminal_send_cost`

``` purescript
terminal_send_cost :: Number
```

#### `terminal_min_send`

``` purescript
terminal_min_send :: Int
```

#### `container_hits`

``` purescript
container_hits :: Int
```

#### `container_capacity`

``` purescript
container_capacity :: Int
```

#### `container_decay`

``` purescript
container_decay :: Int
```

#### `container_decay_time`

``` purescript
container_decay_time :: Int
```

#### `container_decay_time_owned`

``` purescript
container_decay_time_owned :: Int
```

#### `nuker_hits`

``` purescript
nuker_hits :: Int
```

#### `nuker_cooldown`

``` purescript
nuker_cooldown :: Int
```

#### `nuker_energy_capacity`

``` purescript
nuker_energy_capacity :: Int
```

#### `nuker_ghodium_capacity`

``` purescript
nuker_ghodium_capacity :: Int
```

#### `nuke_land_time`

``` purescript
nuke_land_time :: Int
```

#### `nuke_range`

``` purescript
nuke_range :: Int
```

#### `nuke_damage`

``` purescript
nuke_damage :: { 0 :: Int, 1 :: Int, 4 :: Int }
```

#### `resource_energy`

``` purescript
resource_energy :: ResourceType
```

#### `resource_power`

``` purescript
resource_power :: ResourceType
```

#### `resource_hydrogen`

``` purescript
resource_hydrogen :: ResourceType
```

#### `resource_oxygen`

``` purescript
resource_oxygen :: ResourceType
```

#### `resource_utrium`

``` purescript
resource_utrium :: ResourceType
```

#### `resource_lemergium`

``` purescript
resource_lemergium :: ResourceType
```

#### `resource_keanium`

``` purescript
resource_keanium :: ResourceType
```

#### `resource_zynthium`

``` purescript
resource_zynthium :: ResourceType
```

#### `resource_catalyst`

``` purescript
resource_catalyst :: ResourceType
```

#### `resource_ghodium`

``` purescript
resource_ghodium :: ResourceType
```

#### `resource_hydroxide`

``` purescript
resource_hydroxide :: ResourceType
```

#### `resource_zynthium_keanite`

``` purescript
resource_zynthium_keanite :: ResourceType
```

#### `resource_utrium_lemergite`

``` purescript
resource_utrium_lemergite :: ResourceType
```

#### `resource_utrium_hydride`

``` purescript
resource_utrium_hydride :: ResourceType
```

#### `resource_utrium_oxide`

``` purescript
resource_utrium_oxide :: ResourceType
```

#### `resource_keanium_hydride`

``` purescript
resource_keanium_hydride :: ResourceType
```

#### `resource_keanium_oxide`

``` purescript
resource_keanium_oxide :: ResourceType
```

#### `resource_lemergium_hydride`

``` purescript
resource_lemergium_hydride :: ResourceType
```

#### `resource_lemergium_oxide`

``` purescript
resource_lemergium_oxide :: ResourceType
```

#### `resource_zynthium_hydride`

``` purescript
resource_zynthium_hydride :: ResourceType
```

#### `resource_zynthium_oxide`

``` purescript
resource_zynthium_oxide :: ResourceType
```

#### `resource_ghodium_hydride`

``` purescript
resource_ghodium_hydride :: ResourceType
```

#### `resource_ghodium_oxide`

``` purescript
resource_ghodium_oxide :: ResourceType
```

#### `resource_utrium_acid`

``` purescript
resource_utrium_acid :: ResourceType
```

#### `resource_utrium_alkalide`

``` purescript
resource_utrium_alkalide :: ResourceType
```

#### `resource_keanium_acid`

``` purescript
resource_keanium_acid :: ResourceType
```

#### `resource_keanium_alkalide`

``` purescript
resource_keanium_alkalide :: ResourceType
```

#### `resource_lemergium_acid`

``` purescript
resource_lemergium_acid :: ResourceType
```

#### `resource_lemergium_alkalide`

``` purescript
resource_lemergium_alkalide :: ResourceType
```

#### `resource_zynthium_acid`

``` purescript
resource_zynthium_acid :: ResourceType
```

#### `resource_zynthium_alkalide`

``` purescript
resource_zynthium_alkalide :: ResourceType
```

#### `resource_ghodium_acid`

``` purescript
resource_ghodium_acid :: ResourceType
```

#### `resource_ghodium_alkalide`

``` purescript
resource_ghodium_alkalide :: ResourceType
```

#### `resource_catalyzed_utrium_acid`

``` purescript
resource_catalyzed_utrium_acid :: ResourceType
```

#### `resource_catalyzed_utrium_alkalide`

``` purescript
resource_catalyzed_utrium_alkalide :: ResourceType
```

#### `resource_catalyzed_keanium_acid`

``` purescript
resource_catalyzed_keanium_acid :: ResourceType
```

#### `resource_catalyzed_keanium_alkalide`

``` purescript
resource_catalyzed_keanium_alkalide :: ResourceType
```

#### `resource_catalyzed_lemergium_acid`

``` purescript
resource_catalyzed_lemergium_acid :: ResourceType
```

#### `resource_catalyzed_lemergium_alkalide`

``` purescript
resource_catalyzed_lemergium_alkalide :: ResourceType
```

#### `resource_catalyzed_zynthium_acid`

``` purescript
resource_catalyzed_zynthium_acid :: ResourceType
```

#### `resource_catalyzed_zynthium_alkalide`

``` purescript
resource_catalyzed_zynthium_alkalide :: ResourceType
```

#### `resource_catalyzed_ghodium_acid`

``` purescript
resource_catalyzed_ghodium_acid :: ResourceType
```

#### `resource_catalyzed_ghodium_alkalide`

``` purescript
resource_catalyzed_ghodium_alkalide :: ResourceType
```


