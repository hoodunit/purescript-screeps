-- | All FindType constants
module Screeps.FindType where

import Screeps.RoomPosition.Type (RoomPosition)
--import Screeps.Creep (Creep)
--import Screeps.Source (Source)
import Screeps.Types (FindType, Flag, Resource, AnyStructure, ConstructionSite, Mineral, Nuke, Creep, Source)
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

