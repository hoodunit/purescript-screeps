module Screeps.Color where

import Data.Eq(class Eq)
import Data.Generic (class Generic, gShow, gEq)
import Data.Show(class Show)

newtype Color = Color Int
derive instance genericColor :: Generic Color
instance eqColor :: Eq Color where eq = gEq
instance showColor :: Show Color where show = gShow

foreign import color_red :: Color
foreign import color_purple :: Color
foreign import color_blue :: Color
foreign import color_cyan :: Color
foreign import color_green :: Color
foreign import color_yellow :: Color
foreign import color_orange :: Color
foreign import color_brown :: Color
foreign import color_grey :: Color
foreign import color_white :: Color

