-- | Corresponds to the Screeps API [StructureExtension](http://support.screeps.com/hc/en-us/articles/207711949-StructureExtension)
module Screeps.Refillable where

import Data.Argonaut.Encode.Class (class EncodeJson, encodeJson)
import Data.Argonaut.Decode.Class (class DecodeJson, decodeJson)
import Data.Eq
import Data.HeytingAlgebra
import Data.Maybe                 (Maybe(..))
import Data.Ord                   ((<))
import Data.Show
import Unsafe.Coerce              (unsafeCoerce)

import Screeps.FFI                (unsafeField, instanceOf)
import Screeps.Id
import Screeps.RoomObject         (class RoomObject)
import Screeps.Structure
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
instance showRefillable            :: Show       AnyRefillable where show       = showStructure
instance eqRefillable              :: Eq         AnyRefillable where eq         = eqById
instance refillableIsStructure     :: Structure  AnyRefillable where
  _structureType _ = StructureType "<refillable>"
instance anyRefillable             :: Refillable AnyRefillable

energy :: forall a. Refillable a => a -> Int
energy = unsafeField "energy"

energyCapacity :: forall a. Refillable a => a -> Int
energyCapacity = unsafeField "energyCapacity"

-- | Checks that structure is any `Refillable`.
toRefillable :: forall s. Structure s => s -> Maybe AnyRefillable
toRefillable r = if validate  s
                    then Just s
                    else Nothing
  where
    s :: AnyRefillable
    s  = unsafeCoerce r

-- | Check whether `Refillable` is not at full capacity
isNotFull  :: forall a. Refillable a => a -> Boolean
isNotFull x = energy x < energyCapacity x

-- | Check whether `Refillable` is not at full capacity
isFull  :: forall a. Refillable a => a -> Boolean
isFull x = energy x == energyCapacity x

