module Screeps.Constants where

import Screeps.IntMap (IntMap)
import Screeps.Types

foreign import obstacle_object_types :: Array String

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
-- | From 2 to 8
foreign import rampart_hits_max :: IntMap Int
{-  { "2" :: Int
  , "3" :: Int
  , "4" :: Int
  , "5" :: Int
  , "6" :: Int
  , "7" :: Int
  , "8" :: Int }-}

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
-- | From 0 to 8
foreign import extension_energy_capacity :: IntMap Int
{-  { "0" :: Int
  , "1" :: Int
  , "2" :: Int
  , "3" :: Int
  , "4" :: Int
  , "5" :: Int
  , "6" :: Int
  , "7" :: Int
  , "8" :: Int }-}

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

-- | 1 to 8
foreign import controller_levels :: IntMap Int

-- | Number of structures available on each level
type StructureInfo = IntMap Int

-- | NOTE: there is better interface Screeps.Structure.numStructures
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

