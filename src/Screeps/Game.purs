-- | Corresponds to the Screeps API [Game](http://support.screeps.com/hc/en-us/articles/203016382-Game)
module Screeps.Game where

import Prelude
import Control.Monad.Eff (Eff)
import Data.StrMap as StrMap

import Screeps.ConstructionSite (ConstructionSite)
import Screeps.Effects    (CMD, TICK, TIME)
import Screeps.Types
import Screeps.Flag       (Flag)
import Screeps.Market     (Market)
import Screeps.RoomObject (Room, class RoomObject)
import Screeps.Spawn      (Spawn)
import Screeps.Structure

foreign import unsafeGameField :: forall a e. String -> Eff (tick :: TICK | e) a

type Gcl =
  { level         :: Int
  , progress      :: Int
  , progressTotal :: Int }

type Cpu =
  { limit     :: Int
  , tickLimit :: Int
  , bucket    :: Int }

constructionSites :: forall e. Eff (tick :: TICK | e) (StrMap.StrMap ConstructionSite)
constructionSites = unsafeGameField "constructionSites"

cpu :: forall e. Eff (tick :: TICK | e) Cpu
cpu = unsafeGameField "cpu"

creeps :: forall e. Eff (tick :: TICK | e) (StrMap.StrMap Creep)
creeps = unsafeGameField "creeps"

flags :: forall e. Eff (tick :: TICK | e) (StrMap.StrMap Flag)
flags = unsafeGameField "flags"


foreign import gcl :: Gcl

foreign import map :: WorldMap

market :: forall e. Eff (tick :: TICK | e) Market
market = unsafeGameField "market"

rooms :: forall e. Eff (tick :: TICK | e) (StrMap.StrMap Room)
rooms = unsafeGameField "rooms"

spawns :: forall e. Eff (tick :: TICK | e) (StrMap.StrMap Spawn)
spawns = unsafeGameField "spawns"

structures :: forall e. Eff (tick :: TICK | e) (StrMap.StrMap AnyStructure)
structures = unsafeGameField "structures"

time :: forall e. Eff (tick :: TICK | e) Int
time = unsafeGameField "time"

foreign import getUsedCpu :: forall e. Eff (time :: TIME | e) Number

foreign import notify :: forall e. String -> Eff (cmd :: CMD | e) Unit

foreign import notify_ :: forall e. String -> Int -> Eff (cmd :: CMD | e) Unit
