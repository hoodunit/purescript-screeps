module Screeps.Types where

import Prelude
import Data.Argonaut.Decode (class DecodeJson, decodeJson, gDecodeJson)
import Data.Argonaut.Encode (class EncodeJson, encodeJson, gEncodeJson)
import Data.Generic (class Generic, gEq, gShow)
import Data.Maybe (Maybe)

foreign import data CMD :: !
foreign import data MEMORY :: !
foreign import data TIME :: !

foreign import data RawOwnedStructure :: * -> *
foreign import data RawRoomObject :: * -> *
foreign import data RawStructure :: * -> *

type RoomObject a = RawRoomObject a
type Structure a = RoomObject (RawStructure a)
type OwnedStructure a = Structure (RawOwnedStructure a)

foreign import data RawContainer :: *
foreign import data RawController :: *
foreign import data RawExtension :: *
foreign import data RawExtractor :: *
foreign import data RawKeeperLair :: *
foreign import data RawLab :: *
foreign import data RawLink :: *
foreign import data RawNuker :: *
foreign import data RawObserver :: *
foreign import data RawPortal :: *
foreign import data RawPowerBank :: *
foreign import data RawPowerSpawn :: *
foreign import data RawRampart :: *
foreign import data RawRoad :: *
foreign import data RawSpawn :: *
foreign import data RawStorage :: *
foreign import data RawTerminal :: *
foreign import data RawTower :: *
foreign import data RawWall :: *

type Container = Structure RawContainer
type Controller = OwnedStructure RawController
type Extension = OwnedStructure RawExtension
type Extractor = OwnedStructure RawExtractor
type KeeperLair = OwnedStructure RawKeeperLair
type Lab = OwnedStructure RawLab
type Link = OwnedStructure RawLink
type Nuker = OwnedStructure RawNuker
type Observer = OwnedStructure RawObserver
type Portal = OwnedStructure RawPortal
type PowerBank = OwnedStructure RawPowerBank
type PowerSpawn = OwnedStructure RawPowerSpawn
type Rampart = OwnedStructure RawRampart
type Road = OwnedStructure RawRoad
type Spawn = OwnedStructure RawSpawn
type Storage = OwnedStructure RawStorage
type Terminal = OwnedStructure RawTerminal
type Tower = OwnedStructure RawTower
type Wall = OwnedStructure RawWall

foreign import data Room :: *
foreign import data RoomPosition :: *

foreign import data RawCreep :: *

type Creep = RoomObject RawCreep

foreign import data RawConstructionSite :: *
foreign import data RawFlag :: *
foreign import data RawMineral :: *
foreign import data RawNuke :: *
foreign import data RawResource :: *
foreign import data RawSource :: *

type ConstructionSite = RoomObject RawConstructionSite
type Flag = RoomObject RawFlag
type Mineral = RoomObject RawMineral
type Nuke = RoomObject RawNuke
type Resource = RoomObject RawResource
type Source = RoomObject RawSource

foreign import data WorldMap :: *
foreign import data Market :: *
foreign import data Store :: *

-- Constants
newtype ReturnCode = ReturnCode Int
derive instance genericReturnCode :: Generic ReturnCode
instance eqReturnCode :: Eq ReturnCode where eq = gEq
instance showReturnCode :: Show ReturnCode where
  show code@(ReturnCode n) = case code of
    _ | code == ok -> print "OK"
    _ | code == err_not_owner -> printErr "NOT OWNER"
    _ | code == err_no_path -> printErr "NO PATH"
    _ | code == err_name_exists -> printErr "NAME EXISTS"
    _ | code == err_busy -> printErr "BUSY"
    _ | code == err_not_found -> printErr "NOT FOUND"
    _ | code == err_not_enough_energy -> printErr "NOT ENOUGH ENERGY/RESOURCES/EXTENSIONS"
    _ | code == err_not_enough_resources -> printErr "NOT ENOUGH ENERGY/RESOURCES/EXTENSIONS"
    _ | code == err_invalid_target -> printErr "INVALID TARGET"
    _ | code == err_full -> printErr "FULL"
    _ | code == err_not_in_range -> printErr "NOT IN RANGE"
    _ | code == err_invalid_args -> printErr "INVALID ARGS"
    _ | code == err_tired -> printErr "TIRED"
    _ | code == err_no_bodypart -> printErr "NO BODYPART"
    _ | code == err_not_enough_extensions -> printErr "NOT ENOUGH ENERGY/RESOURCES/EXTENSIONS"
    _ | code == err_rcl_not_enough -> printErr "RCL NOT ENOUGH"
    _ | code == err_gcl_not_enough -> printErr "GCL NOT ENOUGH"
    _ -> printErr "UNKNOWN"
    where print s = s <> " (" <> show n <> ")"
          printErr s = "ERR: " <> s <> " (" <> show n <> ")"

newtype ResourceType = ResourceType String
derive instance genericResourceType :: Generic ResourceType
instance eqResourceType :: Eq ResourceType where eq = gEq
instance showResourceType :: Show ResourceType where
  show (ResourceType s) = s

newtype StructureType = StructureType String
derive instance genericStructureType :: Generic StructureType
instance eqStructureType :: Eq StructureType where eq = gEq
instance showStructureType :: Show StructureType where show = gShow

newtype TerrainMask = TerrainMask Int
derive instance genericTerrainMask :: Generic TerrainMask
instance eqTerrainMask :: Eq TerrainMask where eq = gEq
instance showTerrainMask :: Show TerrainMask where show = gShow

newtype Terrain = Terrain String
derive instance genericTerrain :: Generic Terrain
instance eqTerrain :: Eq Terrain where eq = gEq
instance showTerrain :: Show Terrain
  where show (Terrain s) = s

newtype Mode = Mode String
derive instance genericMode :: Generic Mode
instance eqMode :: Eq Mode where eq = gEq
instance showMode :: Show Mode where show = gShow

newtype Id a = Id String
derive instance genericId :: Generic (Id a)
instance eqId :: Eq (Id a) where eq = gEq
instance showId :: Show (Id a) where show = gShow
instance decodeJsonId :: DecodeJson (Id a) where decodeJson = gDecodeJson
instance encodeJsonId :: EncodeJson (Id a) where encodeJson = gEncodeJson

newtype Direction = Direction Int
derive instance genericDirection :: Generic Direction
instance eqDirection :: Eq Direction where eq = gEq
instance showDirection :: Show Direction where show = gShow

newtype BodyPartType = BodyPartType String
derive instance genericBodyPartType :: Generic BodyPartType
instance eqBodyPartType :: Eq BodyPartType where eq = gEq
instance showBodyPartType :: Show BodyPartType where show = gShow

newtype Color = Color Int
derive instance genericColor :: Generic Color
instance eqColor :: Eq Color where eq = gEq
instance showColor :: Show Color where show = gShow

newtype LookType a = LookType String
newtype FindType a = FindType Int

type StructureInfo =
  { "1" :: Int
  , "2" :: Int
  , "3" :: Int
  , "4" :: Int
  , "5" :: Int
  , "6" :: Int
  , "7" :: Int
  , "8" :: Int }

type Path = Array PathStep -- or String?
foreign import data CreepCargo :: *
type BodyPart =
  { boost :: Maybe String
  , type :: BodyPartType
  , hits :: Int }

type Gcl =
  { level :: Int
  , progress :: Int
  , progressTotal :: Int }

type Cpu =
  { limit :: Int
  , tickLimit :: Int
  , bucket :: Int }

type PathStep =
  { x :: Int
  , y :: Int
  , dx :: Number
  , dy :: Number
  , direction :: Direction }

type SpawningInfo =
  { name :: String
  , needTime :: Int
  , remainingTime :: Int }

-------------------------------
-- Constants
-------------------------------
foreign import ok :: ReturnCode
foreign import err_not_owner :: ReturnCode
foreign import err_no_path :: ReturnCode
foreign import err_name_exists :: ReturnCode
foreign import err_busy :: ReturnCode
foreign import err_not_found :: ReturnCode
foreign import err_not_enough_energy :: ReturnCode
foreign import err_not_enough_resources :: ReturnCode
foreign import err_invalid_target :: ReturnCode
foreign import err_full :: ReturnCode
foreign import err_not_in_range :: ReturnCode
foreign import err_invalid_args :: ReturnCode
foreign import err_tired :: ReturnCode
foreign import err_no_bodypart :: ReturnCode
foreign import err_not_enough_extensions :: ReturnCode
foreign import err_rcl_not_enough :: ReturnCode
foreign import err_gcl_not_enough :: ReturnCode

foreign import find_exit_top :: FindType RoomPosition
foreign import find_exit_right :: FindType RoomPosition
foreign import find_exit_bottom :: FindType RoomPosition
foreign import find_exit_left :: FindType RoomPosition
foreign import find_exit :: FindType RoomPosition
foreign import find_creeps :: FindType Creep
foreign import find_my_creeps :: FindType Creep
foreign import find_hostile_creeps :: FindType Creep
foreign import find_sources_active :: FindType Source
foreign import find_sources :: FindType Source
foreign import find_dropped_energy :: FindType Resource
foreign import find_dropped_resources :: FindType Resource
foreign import find_structures :: FindType (Structure Unit)
foreign import find_my_structures :: forall a. FindType (Structure a)
foreign import find_hostile_structures :: FindType (Structure Unit)
foreign import find_flags :: FindType Flag
foreign import find_construction_sites :: FindType ConstructionSite
foreign import find_my_spawns :: FindType Spawn
foreign import find_hostile_spawns :: FindType Spawn
foreign import find_my_construction_sites :: FindType ConstructionSite
foreign import find_hostile_construction_sites :: FindType ConstructionSite
foreign import find_minerals :: FindType Mineral
foreign import find_nukes :: FindType Nuke

foreign import top :: Direction
foreign import top_right :: Direction
foreign import right :: Direction
foreign import bottom_right :: Direction
foreign import bottom :: Direction
foreign import bottom_left :: Direction
foreign import left :: Direction
foreign import top_left :: Direction

foreign import color_red :: Color
foreign import color_purple :: Color
foreign import color_blue :: Color
foreign import color_cyan :: Color
foreign import color_green :: Color
foreign import color_yellow :: Color
foreign import color_orange :: Color
foreign import color_brown :: Color
foreign import color_grey :: Color
foreign import color_white :: Color

foreign import look_creeps :: LookType Creep
foreign import look_energy :: LookType Resource
foreign import look_resources :: LookType Resource
foreign import look_sources :: LookType Source
foreign import look_minerals :: LookType Mineral
foreign import look_structures :: LookType (Structure Unit)
foreign import look_flags :: LookType Flag
foreign import look_construction_sites :: LookType ConstructionSite
foreign import look_nukes :: LookType Nuke
foreign import look_terrain :: LookType Terrain

foreign import obstacle_object_types :: Array String

foreign import part_move :: BodyPartType
foreign import part_work :: BodyPartType
foreign import part_carry :: BodyPartType
foreign import part_attack :: BodyPartType
foreign import part_ranged_attack :: BodyPartType
foreign import part_tough :: BodyPartType
foreign import part_heal :: BodyPartType
foreign import part_claim :: BodyPartType

foreign import bodypart_cost ::
  { move :: Int
  , work :: Int
  , attack :: Int
  , carry :: Int
  , heal :: Int
  , ranged_attack :: Int
  , tough :: Int
  , claim :: Int }

foreign import creep_life_time :: Int
foreign import creep_claim_life_time :: Int
foreign import creep_corpse_rate :: Int

foreign import carry_capacity :: Int
foreign import harvest_power :: Int
foreign import harvest_mineral_power :: Int
foreign import repair_power :: Int
foreign import dismantle_power :: Int
foreign import build_power :: Int
foreign import attack_power :: Int
foreign import upgrade_controller_power :: Int
foreign import ranged_attack_power :: Int
foreign import heal_power :: Int
foreign import ranged_heal_power :: Int
foreign import repair_cost :: Int
foreign import dismantle_cost :: Int

foreign import rampart_decay_amount :: Int
foreign import rampart_decay_time :: Int
foreign import rampart_hits :: Int
foreign import rampart_hits_max ::
  { "2" :: Int
  , "3" :: Int
  , "4" :: Int
  , "5" :: Int
  , "6" :: Int
  , "7" :: Int
  , "8" :: Int }

foreign import energy_regen_time :: Int
foreign import energy_decay :: Int

foreign import spawn_hits :: Int
foreign import spawn_energy_start :: Int
foreign import spawn_energy_capacity :: Int
foreign import creep_spawn_time :: Int

foreign import source_energy_capacity :: Int
foreign import source_energy_neutral_capacity :: Int
foreign import source_energy_keeper_capacity :: Int

foreign import wall_hits :: Int
foreign import wall_hits_max :: Int

foreign import extension_hits :: Int
foreign import extension_energy_capacity ::
  { "0" :: Int
  , "1" :: Int
  , "2" :: Int
  , "3" :: Int
  , "4" :: Int
  , "5" :: Int
  , "6" :: Int
  , "7" :: Int
  , "8" :: Int }

foreign import road_hits :: Int
foreign import road_wearout :: Int
foreign import road_decay_amount :: Int
foreign import road_decay_time :: Int

foreign import link_hits :: Int
foreign import link_hits_max :: Int
foreign import link_capacity :: Int
foreign import link_cooldown :: Int
foreign import link_loss_ratio :: Number

foreign import storage_capacity :: Int
foreign import storage_hits :: Int

foreign import structure_spawn :: StructureType
foreign import structure_extension :: StructureType
foreign import structure_road :: StructureType
foreign import structure_wall :: StructureType
foreign import structure_rampart :: StructureType
foreign import structure_keeper_lair :: StructureType
foreign import structure_portal :: StructureType
foreign import structure_controller :: StructureType
foreign import structure_link :: StructureType
foreign import structure_storage :: StructureType
foreign import structure_tower :: StructureType
foreign import structure_observer :: StructureType
foreign import structure_power_bank :: StructureType
foreign import structure_power_spawn :: StructureType
foreign import structure_extractor :: StructureType
foreign import structure_lab :: StructureType
foreign import structure_terminal :: StructureType
foreign import structure_container :: StructureType
foreign import structure_nuker :: StructureType

foreign import construction_cost ::
  { spawn :: Int
  , extension :: Int
  , road :: Int
  , constructedWall :: Int
  , rampart :: Int
  , link :: Int
  , storage :: Int
  , tower :: Int
  , observer :: Int
  , powerSpawn :: Int
  , extractor :: Int
  , lab :: Int
  , terminal :: Int
  , container :: Int
  , nuker :: Int }
foreign import construction_cost_road_swamp_ratio :: Int

foreign import controller_levels ::
  { "1" :: Int
  , "2" :: Int
  , "3" :: Int
  , "4" :: Int
  , "5" :: Int
  , "6" :: Int
  , "7" :: Int }
foreign import controller_structures ::
  { spawn :: StructureInfo
  , extension :: StructureInfo
  , road :: StructureInfo
  , constructedWall :: StructureInfo
  , rampart :: StructureInfo
  , link :: StructureInfo
  , storage :: StructureInfo
  , tower :: StructureInfo
  , observer :: StructureInfo
  , powerSpawn :: StructureInfo
  , extractor :: StructureInfo
  , lab :: StructureInfo
  , terminal :: StructureInfo
  , container :: StructureInfo
  , nuker :: StructureInfo }

foreign import controller_downgrade :: StructureInfo
foreign import controller_claim_downgrade :: Number
foreign import controller_reserve :: Int
foreign import controller_reserve_max :: Int
foreign import controller_max_upgrade_per_tick :: Int
foreign import controller_attack_blocked_upgrade :: Int

foreign import tower_hits :: Int
foreign import tower_capacity :: Int
foreign import tower_energy_cost :: Int
foreign import tower_power_attack :: Int
foreign import tower_power_heal :: Int
foreign import tower_power_repair :: Int
foreign import tower_optimal_range :: Int
foreign import tower_falloff_range :: Int
foreign import tower_falloff :: Number

foreign import observer_hits :: Int
foreign import observer_range :: Int

foreign import power_bank_hits :: Int
foreign import power_bank_capacity_max :: Int
foreign import power_bank_capacity_min :: Int
foreign import power_bank_capacity_crit :: Number
foreign import power_bank_decay :: Int
foreign import power_bank_hit_back :: Number

foreign import power_spawn_hits :: Int
foreign import power_spawn_energy_capacity :: Int
foreign import power_spawn_power_capacity :: Int
foreign import power_spawn_energy_ratio :: Int

foreign import extractor_hits :: Int

foreign import lab_hits :: Int
foreign import lab_mineral_capacity :: Int
foreign import lab_energy_capacity :: Int
foreign import lab_boost_energy :: Int
foreign import lab_boost_mineral :: Int
foreign import lab_cooldown :: Int

foreign import gcl_pow :: Number
foreign import gcl_multiply :: Int
foreign import gcl_novice :: Int

foreign import mode_simulation :: Mode
foreign import mode_survival :: Mode
foreign import mode_world :: Mode
foreign import mode_arena :: Mode

foreign import terrain_mask_wall :: TerrainMask
foreign import terrain_mask_swamp :: TerrainMask
foreign import terrain_mask_lava :: TerrainMask

foreign import max_construction_sites :: Int
foreign import max_creep_size :: Int

foreign import mineral_regen_time :: Int
foreign import mineral_min_amount ::
  { "H" :: Int
  , "O" :: Int
  , "L" :: Int
  , "K" :: Int
  , "Z" :: Int
  , "U" :: Int
  , "X" :: Int }
foreign import mineral_random_factor :: Int

foreign import terminal_capacity :: Int
foreign import terminal_hits :: Int
foreign import terminal_send_cost :: Number
foreign import terminal_min_send :: Int

foreign import container_hits :: Int
foreign import container_capacity :: Int
foreign import container_decay :: Int
foreign import container_decay_time :: Int
foreign import container_decay_time_owned :: Int

foreign import nuker_hits :: Int
foreign import nuker_cooldown :: Int
foreign import nuker_energy_capacity :: Int
foreign import nuker_ghodium_capacity :: Int
foreign import nuke_land_time :: Int
foreign import nuke_range :: Int
foreign import nuke_damage ::
  { "0" :: Int
  , "1" :: Int
  , "4" :: Int }

foreign import resource_energy :: ResourceType
foreign import resource_power :: ResourceType

foreign import resource_hydrogen :: ResourceType
foreign import resource_oxygen :: ResourceType
foreign import resource_utrium :: ResourceType
foreign import resource_lemergium :: ResourceType
foreign import resource_keanium :: ResourceType
foreign import resource_zynthium :: ResourceType
foreign import resource_catalyst :: ResourceType
foreign import resource_ghodium :: ResourceType

foreign import resource_hydroxide :: ResourceType
foreign import resource_zynthium_keanite :: ResourceType
foreign import resource_utrium_lemergite :: ResourceType

foreign import resource_utrium_hydride :: ResourceType
foreign import resource_utrium_oxide :: ResourceType
foreign import resource_keanium_hydride :: ResourceType
foreign import resource_keanium_oxide :: ResourceType
foreign import resource_lemergium_hydride :: ResourceType
foreign import resource_lemergium_oxide :: ResourceType
foreign import resource_zynthium_hydride :: ResourceType
foreign import resource_zynthium_oxide :: ResourceType
foreign import resource_ghodium_hydride :: ResourceType
foreign import resource_ghodium_oxide :: ResourceType

foreign import resource_utrium_acid :: ResourceType
foreign import resource_utrium_alkalide :: ResourceType
foreign import resource_keanium_acid :: ResourceType
foreign import resource_keanium_alkalide :: ResourceType
foreign import resource_lemergium_acid :: ResourceType
foreign import resource_lemergium_alkalide :: ResourceType
foreign import resource_zynthium_acid :: ResourceType
foreign import resource_zynthium_alkalide :: ResourceType
foreign import resource_ghodium_acid :: ResourceType
foreign import resource_ghodium_alkalide :: ResourceType

foreign import resource_catalyzed_utrium_acid :: ResourceType
foreign import resource_catalyzed_utrium_alkalide :: ResourceType
foreign import resource_catalyzed_keanium_acid :: ResourceType
foreign import resource_catalyzed_keanium_alkalide :: ResourceType
foreign import resource_catalyzed_lemergium_acid :: ResourceType
foreign import resource_catalyzed_lemergium_alkalide :: ResourceType
foreign import resource_catalyzed_zynthium_acid :: ResourceType
foreign import resource_catalyzed_zynthium_alkalide :: ResourceType
foreign import resource_catalyzed_ghodium_acid :: ResourceType
foreign import resource_catalyzed_ghodium_alkalide :: ResourceType
