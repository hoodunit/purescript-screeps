module Screeps.Constants where

import Prelude

import Screeps.Types

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
