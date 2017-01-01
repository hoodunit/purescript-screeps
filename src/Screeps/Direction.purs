-- | Defines the main types used in the library and the relationships between them.
module Screeps.Direction where

import Prelude (class Eq, class Show, show, (<>), (==))
import Data.Argonaut.Decode (class DecodeJson, decodeJson, gDecodeJson)
import Data.Argonaut.Encode (class EncodeJson, encodeJson, gEncodeJson)
import Data.Generic (class Generic, gEq, gShow)
import Data.Show  (class Show)

newtype Direction = Direction Int
derive instance genericDirection :: Generic Direction

foreign import top :: Direction
foreign import top_right :: Direction
foreign import right :: Direction
foreign import bottom_right :: Direction
foreign import bottom :: Direction
foreign import bottom_left :: Direction
foreign import left :: Direction
foreign import top_left :: Direction

instance eqDirection :: Eq Direction where eq = gEq
instance showDirection :: Show Direction
  where
    show d | d==top          = "top"
    show d | d==top          = "bottom"
    show d | d==left         = "left"
    show d | d==right        = "right"
    show d | d==top_left     = "top_left"
    show d | d==top_right    = "top_right"
    show d | d==bottom_left  = "bottom_left"
    show d | d==bottom_right = "bottom_right"
    show d                   = "Direction " <> show d

