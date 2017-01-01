-- | Corresponds to the Screeps API [Structure](http://support.screeps.com/hc/en-us/articles/203079221-Structure)
module Screeps.Structure where

import Prelude
import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe(Just, Nothing))
import Unsafe.Coerce (unsafeCoerce)
import Type.Proxy

import Screeps.Effects    (CMD)
import Screeps.ReturnCode (ReturnCode)
import Screeps.Types -- (Id, Structure, StructureType)
import Screeps.FFI (runThisEffFn0, runThisEffFn1, unsafeField)

hits :: forall a. Structure a => a -> Int
hits = unsafeField "hits"

hitsMax :: forall a. Structure a => a -> Int
hitsMax = unsafeField "hitsMax"

structureType :: forall a. Structural a => a -> StructureType
structureType = unsafeField "structureType"

destroy :: forall a e. Structure a => a -> Eff (cmd :: CMD | e) ReturnCode
destroy = runThisEffFn0 "destroy"

isActive :: forall a e. Structure a => a -> Eff (cmd :: CMD | e) Boolean
isActive = runThisEffFn0 "isActive"

notifyWhenAttacked :: forall a e. Structure a => a -> Boolean -> Eff (cmd :: CMD | e) ReturnCode
notifyWhenAttacked = runThisEffFn1 "notifyWhenAttacked"

unsafeCast :: forall a. Structure a => StructureType -> AnyStructure -> Maybe a
unsafeCast t struc
  | structureType struc == t = Just $ unsafeCoerce struc
  | otherwise = Nothing

toAnyStructure :: forall a. Structure a => a -> AnyStructure
toAnyStructure  = unsafeCoerce

fromAnyStructure :: forall a. Structure a => AnyStructure -> Maybe a
fromAnyStructure = from' Proxy
  where
    from'      :: forall a. Structure a => Proxy a -> AnyStructure -> Maybe a
    from' proxy = unsafeCast $ _structureType proxy

asAnyStructure :: forall a. Structure a => a -> AnyStructure
asAnyStructure = unsafeCoerce
