-- | All FindType constants
module Screeps.FindType where

import Data.Eq     ((==))
import Data.Monoid ((<>))
import Data.Show   (class Show, show)

import Screeps.RoomPosition.Type (RoomPosition)
import Screeps.ConstructionSite (ConstructionSite)
--import Screeps.Creep (Creep)
import Screeps.Flag    (Flag)
import Screeps.Mineral (Mineral)
import Screeps.Nuke    (Nuke)
import Screeps.Resource(Resource)
import Screeps.Source  (Source)
import Screeps.Spawn   (Spawn)
import Screeps.Types   (AnyStructure, Creep, Terrain)

newtype FindType a = FindType Int

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
foreign import find_structures :: FindType AnyStructure
foreign import find_my_structures :: FindType AnyStructure
foreign import find_hostile_structures :: FindType AnyStructure
foreign import find_flags :: FindType Flag
foreign import find_construction_sites :: FindType ConstructionSite
foreign import find_my_spawns :: FindType Spawn
foreign import find_hostile_spawns :: FindType Spawn
foreign import find_my_construction_sites :: FindType ConstructionSite
foreign import find_hostile_construction_sites :: FindType ConstructionSite
foreign import find_minerals :: FindType Mineral
foreign import find_nukes :: FindType Nuke

instance showFindType :: Show (FindType a) where
  show f | f===find_exit_top                   = "find_exit_top" 
  show f | f===find_exit_right                 = "find_exit_right" 
  show f | f===find_exit_bottom                = "find_exit_bottom" 
  show f | f===find_exit_left                  = "find_exit_left" 
  show f | f===find_exit                       = "find_exit" 
  show f | f===find_creeps                     = "find_creeps" 
  show f | f===find_my_creeps                  = "find_my_creeps" 
  show f | f===find_hostile_creeps             = "find_hostile_creeps" 
  show f | f===find_sources_active             = "find_sources_active" 
  show f | f===find_sources                    = "find_sources" 
  show f | f===find_dropped_energy             = "find_dropped_energy" 
  show f | f===find_dropped_resources          = "find_dropped_resources" 
  show f | f===find_structures                 = "find_structures" 
  show f | f===find_my_structures              = "find_my_structures" 
  show f | f===find_hostile_structures         = "find_hostile_structures" 
  show f | f===find_flags                      = "find_flags" 
  show f | f===find_construction_sites         = "find_construction_sites" 
  show f | f===find_my_spawns                  = "find_my_spawns" 
  show f | f===find_hostile_spawns             = "find_hostile_spawns" 
  show f | f===find_my_construction_sites      = "find_my_construction_sites" 
  show f | f===find_hostile_construction_sites = "find_hostile_construction_sites" 
  show f | f===find_minerals                   = "find_minerals" 
  show f | f===find_nukes                      = "find_nukes"
  show (FindType f)                           = "FindType " <> show f

findTypeEq :: forall a b. FindType a
                       -> FindType b
                       -> Boolean 
findTypeEq (FindType a) (FindType b) = a == b
infixr 3 findTypeEq as ===

newtype LookType a = LookType String
foreign import look_creeps :: LookType Creep
foreign import look_energy :: LookType Resource
foreign import look_resources :: LookType Resource
foreign import look_sources :: LookType Source
foreign import look_minerals :: LookType Mineral
foreign import look_structures :: LookType AnyStructure
foreign import look_flags :: LookType Flag
foreign import look_construction_sites :: LookType ConstructionSite
foreign import look_nukes :: LookType Nuke
foreign import look_terrain :: LookType Terrain

instance showLookType :: Show (LookType a) where
  show f | f=-=look_creeps             = "look_creeps" 
  show f | f=-=look_energy             = "look_energy" 
  show f | f=-=look_resources          = "look_resources" 
  show f | f=-=look_sources            = "look_sources" 
  show f | f=-=look_minerals           = "look_minerals" 
  show f | f=-=look_structures         = "look_structures" 
  show f | f=-=look_flags              = "look_flags" 
  show f | f=-=look_construction_sites = "look_construction_sites" 
  show f | f=-=look_nukes              = "look_nukes" 
  show f | f=-=look_terrain            = "look_terrain"
  show f                               = "LookType " <> show f 

lookEq :: forall a b. LookType a -> LookType b -> Boolean 
lookEq (LookType a) (LookType b) = a == b
infixr 3 lookEq as =-=

