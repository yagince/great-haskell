main = do
  let line = "It started cloudy, but it got sunny later."
  putStrLn $ reverseWords line


reverseWords :: String -> String
reverseWords = unwords . map reverse . words