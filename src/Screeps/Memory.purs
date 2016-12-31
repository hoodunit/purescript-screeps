-- | Corresponds to the Screeps APIs [Memory](http://support.screeps.com/hc/en-us/articles/203084991-API-Reference) and [RawMemory](http://support.screeps.com/hc/en-us/articles/205619121-RawMemory)
module Screeps.Memory where

import Prelude
import Data.Argonaut.Core   (Json)
import Data.Argonaut.Decode (class DecodeJson, decodeJson)
import Data.Argonaut.Encode (class EncodeJson, encodeJson)
import Data.Argonaut.Parser (jsonParser)
import Data.Argonaut.Printer (printJson)
import Data.Either (Either)
import Control.Monad.Eff (Eff)

import Screeps.Effects (MEMORY, TICK)
import Screeps.FFI (runThisEffFn0, runThisEffFn1, unsafeGetFieldEff, unsafeSetFieldEff, unsafeDeleteFieldEff)

foreign import data MemoryGlobal :: *
foreign import getMemoryGlobal :: forall e. Eff (tick :: TICK | e) MemoryGlobal

foreign import data RawMemoryGlobal :: *
foreign import getRawMemoryGlobal :: forall e. Eff (tick :: TICK | e) RawMemoryGlobal

foreign import getObjectMemory :: String -> String -> String -> Json
foreign import setObjectMemory :: forall e.
                                  String -> String -> String -> Json
                               -> Eff (memory :: MEMORY | e) Unit

get :: forall a e. (DecodeJson a) => MemoryGlobal -> String -> Eff ( memory :: MEMORY | e ) (Either String a)
get memoryGlobal key = decodeJson <$> unsafeGetFieldEff key memoryGlobal

set :: forall a e. (EncodeJson a) => MemoryGlobal -> String -> a -> Eff ( memory :: MEMORY | e ) Unit
set memoryGlobal key val = unsafeSetFieldEff key memoryGlobal (encodeJson val)

delete :: forall e. MemoryGlobal -> String -> Eff ( memory :: MEMORY | e ) Unit
delete memoryGlobal key = unsafeDeleteFieldEff key memoryGlobal

getRaw :: forall a e. (DecodeJson a) => RawMemoryGlobal -> Eff ( memory :: MEMORY | e) (Either String a)
getRaw rawMemoryGlobal = fromJson <$> runThisEffFn0 "get" rawMemoryGlobal

getRaw' :: forall e. RawMemoryGlobal -> Eff ( memory :: MEMORY | e) String
getRaw' rawMemoryGlobal = runThisEffFn0 "get" rawMemoryGlobal

setRaw :: forall a e. (EncodeJson a) => RawMemoryGlobal -> a -> Eff ( memory :: MEMORY | e) Unit
setRaw rawMemoryGlobal memory = runThisEffFn1 "set" rawMemoryGlobal (toJson memory)

setRaw' :: forall e. RawMemoryGlobal -> String -> Eff ( memory :: MEMORY | e) Unit
setRaw' = runThisEffFn1 "set"

fromJson :: forall a. (DecodeJson a) => String -> (Either String a)
fromJson jsonStr = jsonParser jsonStr >>= decodeJson

toJson :: forall a. (EncodeJson a) => a -> String
toJson = printJson <<< encodeJson
