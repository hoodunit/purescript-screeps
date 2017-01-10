module Screeps.BodyPartType where

import Control.Category
import Data.Eq
import Data.Foldable (sum)
import Data.Functor
import Data.Generic
import Data.Ring
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
  { move          :: Int
  , work          :: Int
  , attack        :: Int
  , carry         :: Int
  , heal          :: Int
  , ranged_attack :: Int
  , tough         :: Int
  , claim         :: Int }

type Body = Array BodyPartType

type Cost = Int

bodyCost :: Body -> Cost
bodyCost  = sum <<< map bodyPartCost

bodyPartCost                            :: BodyPartType -> Cost
bodyPartCost p | p == part_claim         = bodypart_cost.claim
               | p == part_move          = bodypart_cost.move
               | p == part_attack        = bodypart_cost.attack
               | p == part_ranged_attack = bodypart_cost.ranged_attack
               | p == part_tough         = bodypart_cost.tough
               | p == part_carry         = bodypart_cost.carry
               | p == part_work          = bodypart_cost.work
               | p == part_heal          = bodypart_cost.heal
bodyPartCost _                           = -9999999

