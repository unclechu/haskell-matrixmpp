{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}

module Main (main) where

import "matrixmpp" Operators

import "base" GHC.Generics (Generic)
import "base" Data.Maybe (fromJust)
import "qm-interpolated-string" Text.InterpolatedString.QM (qm)

import "yaml" Data.Yaml
import "pontarius-xmpp" Network.Xmpp


data Config = Config { foo :: String
                     , bar :: Int
                     }
                       deriving (Show, Generic)

instance FromJSON Config


configFile :: String
configFile = "config.yaml"


main :: IO ()
main = do

  config <- (decodeFile configFile :: IO (Maybe Config))
              >>= \case Just x  -> return x
                        Nothing -> error [qm|Error while parsing {configFile}|]

  print config
