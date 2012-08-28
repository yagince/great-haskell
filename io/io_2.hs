import System.IO
-- 基本
main = do
  handle <- openFile "hoge.txt" ReadMode
  contents <- hGetContents handle
  putStrLn contents
  hClose handle