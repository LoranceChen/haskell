{-# LANGUAGE OverloadedStrings #-}
module Lib
    ( someFunc,
      myAdd,
      isOdd,
      isEven
    ) where

import           Acme.Missiles

someFunc :: IO ()
someFunc = launchMissiles

myAdd :: Int -> Int -> Int
myAdd a b = a + b

-- 判断奇数偶数
isOdd :: Int -> Bool
isOdd i =
  if i == 0
    then True
    else isEven (i - 1)

isEven :: Int -> Bool
isEven j =
  if j == 0
    then False
    else isOdd (j - 1)
