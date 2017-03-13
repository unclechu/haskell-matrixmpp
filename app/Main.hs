module Main (main) where

import "matrixmpp" Operators

-- import "yaml"
import "pontarius-xmpp" Network.Xmpp


main :: IO ()
main = "testing: " & (++ "hello") ∘> (++ " world") & putStrLn
