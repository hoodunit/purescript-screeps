-- | Corresponds to the Screeps API [Structure](http://support.screeps.com/hc/en-us/articles/203079221-Structure)
module Screeps.Structure where

import Prelude
import Effect
import Data.Maybe (Maybe(Just, Nothing))
import Unsafe.Coerce (unsafeCoerce)

import Screeps.Effects (CMD)
import Screeps.Types (Id, ReturnCode, Structure, StructureType)
import Screeps.FFI (runThisEffectFn0, runThisEffFn1, unsafeField)

hits :: forall a. Structure a -> Int
hits = unsafeField "hits"

hitsMax :: forall a. Structure a -> Int
hitsMax = unsafeField "hitsMax"

id :: forall a. Structure a -> Id (Structure a)
id = unsafeField "id"

structureType :: forall a. Structure a -> StructureType
structureType = unsafeField "structureType"

destroy :: forall a e. Structure a -> Effect ReturnCode
destroy = runThisEffectFn0 "destroy"

isActive :: forall a e. Structure a -> Effect Boolean
isActive = runThisEffectFn0 "isActive"

notifyWhenAttacked :: forall a e. Structure a -> Boolean -> Effect ReturnCode
notifyWhenAttacked = runThisEffectFn1 "notifyWhenAttacked"

unsafeCast :: forall a b. StructureType -> Structure a -> Maybe b
unsafeCast t struc
  | structureType struc == t = Just $ unsafeCoerce struc
  | otherwise = Nothing

asStructure :: forall a. Structure a -> Structure Unit
asStructure = unsafeCoerce
