module Screeps.BodyPartType where

import Data.Generic
import Data.Eq
import Data.Show

newtype BodyPartType = BodyPartType String
derive instance genericBodyPartType :: Generic BodyPartType
instance eqBodyPartType :: Eq BodyPartType where eq = gEq
instance showBodyPartType :: Show BodyPartType where show = gShow

foreign import part_move :: BodyPartType
foreign import part_work :: BodyPartType
foreign import part_carry :: BodyPartType
foreign import part_attack :: BodyPartType
foreign import part_ranged_attack :: BodyPartType
foreign import part_tough :: BodyPartType
foreign import part_heal :: BodyPartType
foreign import part_claim :: BodyPartType

foreign import bodypart_cost ::
  { move :: Int
  , work :: Int
  , attack :: Int
  , carry :: Int
  , heal :: Int
  , ranged_attack :: Int
  , tough :: Int
  , claim :: Int }

