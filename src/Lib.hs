{-# LANGUAGE OverloadedStrings #-}
module Lib
    ( someFunc,
      myAdd
    ) where

import           Acme.Missiles

someFunc :: IO ()
someFunc = launchMissiles

myAdd :: Int -> Int -> Int
myAdd a b = a + b
