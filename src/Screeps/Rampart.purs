-- | Corresponds to the Screeps API [StructureRampart](http://support.screeps.com/hc/en-us/articles/207712959-StructureRampart)
module Screeps.Rampart where

import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)

import Screeps.Decays  (class Decays)
import Screeps.Effects (CMD)
import Screeps.FFI (unsafeField)
import Screeps.Id (class HasId)
import Screeps.Structure (fromAnyStructure)
import Screeps.Types --(Rampart, AnyStructure)
import Screeps.ReturnCode (ReturnCode)

foreign import data Rampart :: *
instance objectRampart      :: RoomObject Rampart
instance ownedRampart       :: Owned      Rampart
instance rampartHasId       :: HasId      Rampart
instance structuralRampart  :: Structural Rampart
instance decaysRampart      :: Decays     Rampart
instance structureRampart   :: Structure  Rampart where
  _structureType _ = structure_rampart

isPublic :: Rampart -> Boolean
isPublic = unsafeField "isPublic"

setPublic :: forall e. Rampart -> Boolean -> Eff (cmd :: CMD | e) ReturnCode
setPublic = unsafeField "setPublic"

toRampart :: AnyStructure -> Maybe Rampart
toRampart =  fromAnyStructure
