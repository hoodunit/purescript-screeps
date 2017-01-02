-- | Internal helper module for JavaScript FFI
module Screeps.FFI where

import Prelude
import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe(Just, Nothing), isJust, fromJust, maybe)
import Data.Function.Uncurried (Fn3, runFn3)
import Partial.Unsafe (unsafePartial)

foreign import unsafeField :: forall obj val. String -> obj -> val
foreign import unsafeGetFieldEff :: forall obj val eff. String -> obj -> Eff eff val
foreign import unsafeSetFieldEff :: forall obj val eff. String -> obj -> val -> Eff eff Unit
foreign import unsafeDeleteFieldEff :: forall obj eff. String -> obj -> Eff eff Unit
foreign import runThisEffFn0 :: forall eff this a. String -> this -> Eff eff a
foreign import runThisEffFn1 :: forall eff this a b. String -> this -> a -> Eff eff b
foreign import runThisEffFn2 :: forall eff this a b c. String -> this -> a -> b -> Eff eff c
foreign import runThisEffFn3 :: forall eff this a b c d. String -> this -> a -> b -> c -> Eff eff d
foreign import runThisEffFn4 :: forall eff this a b c d e. String -> this -> a -> b -> c -> d -> Eff eff e
foreign import runThisEffFn5 :: forall eff this a b c d e f. String -> this -> a -> b -> c -> d -> e -> Eff eff f
foreign import runThisEffFn6 :: forall eff this a b c d e f g. String -> this -> a -> b -> c -> d -> e -> f -> Eff eff g
foreign import runThisFn0 :: forall this a. String -> this -> a
foreign import runThisFn1 :: forall this a b. String -> this -> a -> b
foreign import runThisFn2 :: forall this a b c. String -> this -> a -> b -> c
foreign import runThisFn3 :: forall this a b c d. String -> this -> a -> b -> c -> d
foreign import runThisFn4 :: forall this a b c d e. String -> this -> a -> b -> c -> d -> e
foreign import runThisFn5 :: forall this a b c d e f. String -> this -> a -> b -> c -> d -> e -> f
foreign import runThisFn6 :: forall this a b c d e f g. String -> this -> a -> b -> c -> d -> e -> f -> g

foreign import data NullOrUndefined :: * -> *
foreign import null :: forall a. NullOrUndefined a
foreign import undefined :: forall a. NullOrUndefined a
foreign import notNullOrUndefined :: forall a. a -> NullOrUndefined a
foreign import isNull :: forall a. NullOrUndefined a -> Boolean
foreign import isUndefined :: forall a. NullOrUndefined a -> Boolean
foreign import toMaybeImpl :: forall a m. Fn3 (NullOrUndefined a) m (a -> m) m

toMaybe :: forall a. NullOrUndefined a -> Maybe a
toMaybe n = runFn3 toMaybeImpl n Nothing Just

toNullable :: forall a. Maybe a -> NullOrUndefined a
toNullable = maybe null notNullOrUndefined

toUndefinable :: forall a. Maybe a -> NullOrUndefined a
toUndefinable = maybe undefined notNullOrUndefined

foreign import data JsObject :: *
foreign import selectMaybesImpl :: forall a. (Maybe a -> Boolean) -> (Maybe a -> a) -> a -> JsObject

selectMaybes :: forall a. a -> JsObject
selectMaybes obj = unsafePartial $ selectMaybesImpl isJust fromJust obj

foreign import instanceOf :: forall a. String -> a -> Boolean

