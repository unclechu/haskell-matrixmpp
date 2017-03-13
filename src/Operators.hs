module Operators
  ( (&), (∘>)
  ) where

import "base" Data.Function ((&))


(∘>) :: (a -> b) -> (b -> c) -> a -> c
(∘>) = flip (.)
infixl 9 ∘>
