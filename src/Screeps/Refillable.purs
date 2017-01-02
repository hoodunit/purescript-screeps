-- | Corresponds to the Screeps API [StructureExtension](http://support.screeps.com/hc/en-us/articles/207711949-StructureExtension)
module Screeps.Refillable where

import Data.Argonaut.Encode.Class (class EncodeJson, encodeJson)
import Data.Argonaut.Decode.Class (class DecodeJson, decodeJson)
import Data.HeytingAlgebra

import Screeps.FFI (unsafeField, instanceOf)
import Screeps.Id
import Screeps.Types

class ( Structure a
      , Owned     a ) <= Refillable a

foreign import data AnyRefillable :: *
instance anyRefillableIsRoomObject :: RoomObject AnyRefillable
instance anyRefillableHasId        :: HasId      AnyRefillable
  where
    validate o = instanceOf "StructureExtension"  o
              || instanceOf "StructureSpawn"      o
              || instanceOf "StructurePowerSpawn" o
              || instanceOf "StructureTower"      o
              || instanceOf "StructureNuker"      o
              || instanceOf "StructureLink"       o
              || instanceOf "StructureLab"        o
instance encodeRefillable          :: EncodeJson AnyRefillable where encodeJson = encodeJsonWithId
instance decodeRefillable          :: DecodeJson AnyRefillable where decodeJson = decodeJsonWithId
instance refillableIsStructural    :: Structural AnyRefillable
instance refillableIsOwned         :: Owned      AnyRefillable
instance refillableIsStructure     :: Structure  AnyRefillable where
  _structureType _ = StructureType "<refillable>"
instance anyRefillable             :: Refillable AnyRefillable

energy :: forall a. Refillable a => a -> Int
energy = unsafeField "energy"

energyCapacity :: forall a. Refillable a => a -> Int
energyCapacity = unsafeField "energyCapacity"

