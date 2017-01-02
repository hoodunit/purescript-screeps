-- | Corresponds to the Screeps API [StructureExtension](http://support.screeps.com/hc/en-us/articles/207711949-StructureExtension)
module Screeps.Refillable where

import Screeps.FFI (unsafeField)
import Screeps.Id (class HasId)
import Screeps.Structure (fromAnyStructure)
import Screeps.Types -- (Extension, AnyStructure)

class ( Structure a
      , Owned     a ) <= Refillable a

foreign import data AnyRefillable :: *
instance anyRefillableIsRoomObject :: RoomObject AnyRefillable
instance anyRefillableHasId        :: HasId      AnyRefillable
instance refillableIsStructural    :: Structural AnyRefillable
instance refillableIsOwned         :: Owned      AnyRefillable
instance refillableIsStructure     :: Structure  AnyRefillable where
  _structureType _ = StructureType "<any refillable>"
instance anyRefillable             :: Refillable AnyRefillable

energy :: forall a. Refillable a => a -> Int
energy = unsafeField "energy"

energyCapacity :: forall a. Refillable a => a -> Int
energyCapacity = unsafeField "energyCapacity"

