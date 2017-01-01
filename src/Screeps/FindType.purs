-- | All FindType constants
module Screeps.FindType where

import Screeps.RoomPosition.Type (RoomPosition)
import Screeps.ConstructionSite (ConstructionSite)
--import Screeps.Creep (Creep)
import Screeps.Source (Source)
import Screeps.Mineral (Mineral)
import Screeps.Types (FindType, LookType, Flag, Resource, AnyStructure, Nuke, Creep, Terrain)
import Screeps.Spawn (Spawn)

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

