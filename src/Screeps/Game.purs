-- | Corresponds to the Screeps API [Game](http://support.screeps.com/hc/en-us/articles/203016382-Game)
module Screeps.Game where

import Prelude
import Effect
import Data.Maybe (Maybe)
import Foreign.Object (Object)

import Screeps.Effects (CMD, TICK, TIME)
import Screeps.Types (ConstructionSite, Creep, Flag, GameGlobal, Id, Market, ReturnCode, Room, Spawn, Structure, WorldMap)
import Screeps.FFI (toMaybe, runThisEffectFn0, runThisEffFn1, runThisEffFn2, runThisFn0, runThisFn1, unsafeField)

foreign import getGameGlobal :: forall e. Effect GameGlobal

type Gcl =
  { level :: Int
  , progress :: Int
  , progressTotal :: Int }

type Cpu =
  { limit :: Int
  , tickLimit :: Int
  , bucket :: Int }

constructionSites :: GameGlobal -> Object ConstructionSite
constructionSites = unsafeField "constructionSites"

cpu :: GameGlobal -> Cpu
cpu = unsafeField "cpu"

creeps :: GameGlobal -> Object Creep
creeps = unsafeField "creeps"

flags :: GameGlobal -> Object Flag
flags = unsafeField "flags"

gcl :: GameGlobal -> Gcl
gcl = unsafeField "gcl"

map :: GameGlobal -> WorldMap
map = unsafeField "map"

market :: GameGlobal -> Market
market = unsafeField "market"

rooms :: GameGlobal -> Object Room
rooms = unsafeField "rooms"

spawns :: GameGlobal -> Object Spawn
spawns = unsafeField "spawns"

structures :: GameGlobal -> Object (Structure Unit)
structures = unsafeField "structures"

time :: GameGlobal -> Int
time = unsafeField "time"

getUsed :: forall e. GameGlobal -> Effect Number
getUsed game = runThisEffectFn0 "getUsed" (cpu game)

getObjectById :: forall a. GameGlobal -> Id a -> Maybe a
getObjectById game id = toMaybe $ runThisFn1 "getObjectById" game id

notify :: forall e. GameGlobal -> String -> Effect Unit
notify game msg = runThisEffectFn1 "notify" game msg

notify' :: forall e. GameGlobal -> String -> Int -> Effect Unit
notify' game msg groupInterval = runThisEffectFn2 "notify" game msg groupInterval
