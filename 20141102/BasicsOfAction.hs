module BasicsOfAction where

import System.Random

randAlpha :: IO Char
randAlpha = getStdRandom $ randomR ('A', 'Z')

randInt :: IO Int
randInt = getStdRandom $ randomR (1, 6)

catStatus :: IO ()
catStatus =
  do
    fate <- getStdRandom $ randomR (0 :: Int, 1)
    case fate of
      0 -> putStrLn "The cat is alive."
      _ -> putStrLn "The cat is dead."
