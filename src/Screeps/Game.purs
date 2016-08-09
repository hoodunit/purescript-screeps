-- | Corresponds to the Screeps API [Game](http://support.screeps.com/hc/en-us/articles/203016382-Game)
module Screeps.Game where

import Prelude
import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)
import Data.StrMap as StrMap

import Screeps.Constants (Id, ReturnCode)
import Screeps.Effects (CMD, TIME)
import Screeps.Types (ConstructionSite, Cpu, Creep, Flag, Gcl, Market, Room, Spawn, Structure, WorldMap)
import Screeps.FFI (toMaybe, runThisEffFn0, runThisEffFn1, runThisEffFn2, runThisFn0, runThisFn1, unsafeField)

foreign import data Game :: *
foreign import gameGlobal :: Game

constructionSites :: StrMap.StrMap ConstructionSite
constructionSites = unsafeField "constructionSites" gameGlobal

cpu :: Cpu
cpu = unsafeField "cpu" gameGlobal

creeps :: StrMap.StrMap Creep
creeps = unsafeField "creeps" gameGlobal

flags :: StrMap.StrMap Flag
flags = unsafeField "flags" gameGlobal

gcl :: Gcl
gcl = unsafeField "gcl" gameGlobal

map :: WorldMap
map = unsafeField "map" gameGlobal

market :: Market
market = unsafeField "market" gameGlobal

rooms :: StrMap.StrMap Room
rooms = unsafeField "rooms" gameGlobal

spawns :: StrMap.StrMap Spawn
spawns = unsafeField "spawns" gameGlobal

structures :: StrMap.StrMap (Structure Unit)
structures = unsafeField "structures" gameGlobal

time :: Int
time = unsafeField "time" gameGlobal

getUsed :: forall e. Eff (time :: TIME | e) Int
getUsed = runThisEffFn0 "getUsed" cpu

getObjectById :: forall a. Id a -> Maybe a
getObjectById id = toMaybe $ runThisFn1 "getObjectById" gameGlobal id

notify :: forall e. String -> Eff (cmd :: CMD | e) Unit
notify msg = runThisEffFn1 "notify" gameGlobal msg

notify' :: forall e. String -> Int -> Eff (cmd :: CMD | e) Unit
notify' msg groupInterval = runThisEffFn2 "notify" gameGlobal msg groupInterval
