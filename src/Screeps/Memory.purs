-- | Corresponds to the Screeps APIs [Memory](http://support.screeps.com/hc/en-us/articles/203084991-API-Reference) and [RawMemory](http://support.screeps.com/hc/en-us/articles/205619121-RawMemory)
module Screeps.Memory where

import Prelude (Unit, (<$>), (<<<), (>>=))
import Data.Argonaut.Decode (class DecodeJson, JsonDecodeError, decodeJson, parseJson)
import Data.Argonaut.Encode (class EncodeJson, encodeJson)
import Data.Argonaut.Core (stringify)
import Data.Either (Either)
import Effect

import Screeps.FFI (runThisEffectFn0, runThisEffectFn1, unsafeGetFieldEffect, unsafeSetFieldEffect, unsafeDeleteFieldEffect)

foreign import data MemoryGlobal :: Type
foreign import getMemoryGlobal :: Effect MemoryGlobal

foreign import data RawMemoryGlobal :: Type
foreign import getRawMemoryGlobal :: Effect RawMemoryGlobal

get :: forall a. (DecodeJson a) => MemoryGlobal -> String -> Effect (Either JsonDecodeError a)
get memoryGlobal key = decodeJson <$> unsafeGetFieldEffect key memoryGlobal

set :: forall a. (EncodeJson a) => MemoryGlobal -> String -> a -> Effect Unit
set memoryGlobal key val = unsafeSetFieldEffect key memoryGlobal (encodeJson val)

delete :: MemoryGlobal -> String -> Effect Unit
delete memoryGlobal key = unsafeDeleteFieldEffect key memoryGlobal

getRaw :: forall a. (DecodeJson a) => RawMemoryGlobal -> Effect (Either JsonDecodeError a)
getRaw rawMemoryGlobal = fromJson <$> runThisEffectFn0 "get" rawMemoryGlobal

getRaw' :: RawMemoryGlobal -> Effect String
getRaw' rawMemoryGlobal = runThisEffectFn0 "get" rawMemoryGlobal

setRaw :: forall a. (EncodeJson a) => RawMemoryGlobal -> a -> Effect Unit
setRaw rawMemoryGlobal memory = runThisEffectFn1 "set" rawMemoryGlobal (toJson memory)

setRaw' :: RawMemoryGlobal -> String -> Effect Unit
setRaw' = runThisEffectFn1 "set"

fromJson :: forall a. (DecodeJson a) => String -> Either JsonDecodeError a
fromJson jsonStr = parseJson jsonStr >>= decodeJson

toJson :: forall a. (EncodeJson a) => a -> String
toJson = stringify <<< encodeJson
