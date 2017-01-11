-- | Corresponds to the Screeps API [StructureExtension](http://support.screeps.com/hc/en-us/articles/207711949-StructureExtension)
module Screeps.Deposit where

import Data.Argonaut.Encode.Class     (class EncodeJson, encodeJson)
import Data.Argonaut.Decode.Class     (class DecodeJson, decodeJson)
import Data.Eq
import Data.Function                  (($))
import Data.HeytingAlgebra
import Data.Maybe                     (Maybe(..))
import Data.Show
import Unsafe.Coerce                  (unsafeCoerce)
import Control.Monad.Eff
import Control.Monad.Eff.Exception.Unsafe as U

import Screeps.Effects                (CMD)
import Screeps.FFI                    (unsafeField, instanceOf, runThisEffFn1)
import Screeps.Id
import Screeps.Mineral    as Mineral
import Screeps.Resource
import Screeps.RoomObject             (class RoomObject)
import Screeps.Source     as Source
--import Screeps.Structure
import Screeps.Types

class Deposit a

foreign import data AnyDeposit :: *
instance anyDepositIsRoomObject :: RoomObject AnyDeposit
instance anyDepositHasId        :: HasId      AnyDeposit
  where
    validate o = instanceOf "Mineral" o
              || instanceOf "Source"  o
instance encodeDeposit          :: EncodeJson AnyDeposit where encodeJson = encodeJsonWithId
instance decodeDeposit          :: DecodeJson AnyDeposit where decodeJson = decodeJsonWithId
instance showDeposit            :: Show       AnyDeposit where show       = caseDeposit show show
instance eqDeposit              :: Eq         AnyDeposit where eq         = eqById
instance anyDeposit             :: Deposit    AnyDeposit
instance mineralIsDeposit       :: Deposit    Mineral.Mineral
instance sourceIsDeposit        :: Deposit    Source.Source

caseDeposit ::  forall  d          a.
                Deposit d
            => (Source.Source   -> a)
            -> (Mineral.Mineral -> a)
            ->          d
            ->                     a
caseDeposit srcCase _       ad | instanceOf "Source"  ad = srcCase $ unsafeCoerce ad
caseDeposit _       minCase ad | instanceOf "Mineral" ad = minCase $ unsafeCoerce ad
caseDeposit _       _       _                            = U.unsafeThrow "This is not a deposit!"

harvestDeposit :: forall                  e  a.
                  Creep
               -> AnyDeposit
               -> Eff        (cmd :: CMD| e) a
harvestDeposit  = runThisEffFn1 "harvest"

depositLeft :: forall  a.
               Deposit a
            =>         a
            -> Int
depositLeft  = caseDeposit Source.energy Mineral.mineralAmount

depositType :: forall  d.
               Deposit d
            =>         d
            -> ResourceType
depositType  = caseDeposit (\_ -> resource_energy)
                            Mineral.mineralType

toDeposit :: forall r. RoomObject r => r -> Maybe AnyDeposit
toDeposit r = if validate s
                then Just s
                else Nothing
  where
    s :: AnyDeposit
    s  = unsafeCoerce r

