module Coord(distance, coord, Coord(..), roomCoord) where

import Data.Eq
import Data.Ord
import Data.Either
import Data.Function
import Data.Int                           as I
import Data.Maybe                         (Maybe(..))
import Data.Ring                          (negate, (+), (-), (*))
import Data.Semigroup                     ((<>))
import Data.Show                          (show)
import Data.String                        as S
import Data.String.Regex                  (regex, split)
import Data.String.Regex.Flags            (noFlags)
import Control.Monad.Eff.Exception        (error)
import Control.Monad.Eff.Exception.Unsafe (unsafeThrowException)

import Screeps.Names
import Screeps.RoomObject
import Screeps.RoomPosition
import Screeps.RoomPosition.Type

-- * Uniform multiroom coordinates
data Coord = Coord Int Int

-- | Measure straight-line distance between rooms.
distance :: RoomPosition -> RoomPosition -> Int
distance rp1 rp2 =
    case coord rp1 of
      Coord x1 y1 ->
       case coord rp2 of
         Coord x2 y2 -> max (abs (x1-x2))
                            (abs (y1-y2))
  where
    abs a | a >= 0 =  a
    abs a          = -a

coord :: RoomPosition -> Coord
coord rp = case roomCoord $ roomName rp of
    Coord rx ry -> Coord (rx*50+x rp) (ry*50+y rp)

roomCoord                   :: RoomName -> Coord
roomCoord  rn | show rn == "sim"   = Coord 0 0
roomCoord  rn | show rn == "arena" = Coord 0 0
roomCoord  roomName =
    case split nsRegex rn of
      [hStr, vStr] ->
        case I.fromString $ S.drop 1 hStr of
          Nothing     -> err "Cannot parse horizontal part"
          Just hSteps ->
            case I.fromString        vStr of
              Nothing     -> err "Cannot parse vertical part"
              Just vSteps -> Coord (hSteps*hDir) (vSteps*vDir)
      other        -> err $ "Cannot split roomname: "
  where
    nsRegex = case regex "[NS]" noFlags of
                   Right re  -> re
                   Left  msg -> err msg
    rn :: String
    rn  = show roomName
    err :: forall a. String -> a
    err msg = unsafeThrowException $ error $ msg <> rn
    vDir :: Int
    vDir | S.contains (S.Pattern "N") rn  = -1
    vDir | S.contains (S.Pattern "S") rn  =  1
    vDir                                  = err "Wrong vertical direction in room named: "
    hDir :: Int
    hDir | S.take 1 rn == "E" =  1
    hDir | S.take 1 rn == "W" = -1
    hDir                      = err "Wrong horizontal direction in room named: "

