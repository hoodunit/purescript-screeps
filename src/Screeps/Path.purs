module Screeps.Path where

import Control.Monad.Eff
import Data.Argonaut.Core (Json)
import Data.Show
import Data.Unit

import Screeps.FFI
import Screeps.RoomPosition.Type
import Screeps.Names (RoomName)

-- * Tile cost
type TileCost = Int

defaultTerrainCost :: TileCost
defaultTerrainCost  = 0

unwalkable :: TileCost
unwalkable  = 255

foreign import data PATH :: !

newtype PathFinderResult = PathFinderResult {
    path       :: Array RoomPosition
  , opts       :: Int
  , cost       :: Int
  , incomplete :: Boolean
  }

newtype PathFinderTarget = PathFinderTarget {
    pos   :: RoomPosition
  , range :: Int
  }

target     :: RoomPosition
           -> PathFinderTarget
target aPos = PathFinderTarget {
                pos  : aPos
              , range: 0
              }

inRange           :: RoomPosition
                  -> Int
                  -> PathFinderTarget
inRange aPos range = PathFinderTarget {
                       pos  : aPos
                     , range: range
                     }

foreign import usePathFinder :: forall              e.
                                Eff (path :: PATH | e) Unit

foreign import data CostMatrix :: *

foreign import search :: forall              e.
                               RoomPosition
                      -> Array PathFinderTarget
                      ->     (PathFinderOpts e)
                      -> Eff (path :: PATH | e)  PathFinderResult

foreign import newCostMatrix :: forall              e.
                                Eff (path :: PATH | e) CostMatrix

foreign import infinity :: Number

defaultPathFinderOpts :: forall a. PathFinderOpts a
defaultPathFinderOpts  = PathFinderOpts {
      roomCallback:    allDefaultCosts
    , plainCost:       1
    , swampCost:       5
    , flee:            false
    , maxOps:          2000
    , maxRooms:        16
    , maxCost:         infinity
    , heuristicWeight: 1.2
    }

type RoomCallback e = RoomName -- ^ Room name
                   -> Eff (path :: PATH | e)
                           CostMatrix

allDefaultCosts          :: forall e. RoomCallback e
allDefaultCosts _roomName = newCostMatrix

newtype PathFinderOpts e = PathFinderOpts {
    roomCallback    :: RoomCallback e
  , plainCost       :: TileCost
  , swampCost       :: TileCost
  , flee            :: Boolean
  , maxOps          :: Int
  , maxRooms        :: Int
  , maxCost         :: Number
  , heuristicWeight :: Number
  }

-- * Cost matrix
set :: forall              e.
       CostMatrix
    -> Int
    -> Int
    -> TileCost
    -> Eff (path :: PATH | e) Unit
set  = runThisEffFn3 "set"

get :: forall              e.
       CostMatrix
    -> Int
    -> Int
    -> Eff (path :: PATH | e) TileCost
get  = runThisEffFn2 "get"

clone :: forall              e.
                                CostMatrix
      -> Eff (path :: PATH | e) CostMatrix
clone  = runThisEffFn0 "clone"

newtype SerializedCostMatrix = SerializedCostMatrix Json

derive newtype instance showSerializedCostMatrix :: Show SerializedCostMatrix

serialize :: forall              e.
             CostMatrix
          -> Eff (path :: PATH | e) SerializedCostMatrix
serialize  = runThisEffFn0 "serialize"

foreign import deserialize :: forall              e.
                              SerializedCostMatrix
                           -> Eff (path :: PATH | e) CostMatrix

