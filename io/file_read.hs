import System.IO
import Data.Char

main = do
  withFile "hoge.txt" ReadMode $ \handle -> do
         contents <- hGetContents handle
         putStrLn contents

