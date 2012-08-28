import Data.Char

main = do
  putStrLn "HelloWold"
  putStrLn "hoge1"

  let hoge = map toUpper
  putStrLn $ hoge "aaaa"

  name <- return "nnaammee"
  putStrLn name

  xs <- sequence [return "hoge", return "aaa", return "abc"]
  putStrLn $ show xs