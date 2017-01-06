module Screeps.IntMap(IntMap, keys, lookup) where

import Data.Array   as Array
import Data.Functor           ((<$>))
import Data.Int               (fromString)
import Data.Maybe
import Data.StrMap  as StrMap
import Data.Show              (show)

newtype IntMap a = IntMap (StrMap.StrMap a)

keys           :: forall a. IntMap a -> Array Int
keys (IntMap m) = Array.catMaybes (fromString <$> StrMap.keys m)

lookup             :: forall a. Int -> IntMap a -> Maybe a
lookup i (IntMap m) = show i `StrMap.lookup` m

