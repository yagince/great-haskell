tell :: Integer -> String
tell num
    | num < ten = "under 10"
    | num == ten = "just 10"
    | num > ten && num <= twenty = "over 10"
    | otherwise = "over 20"
    where ten = 10
          twenty = 20

bmi :: Double -> Double -> String
bmi weight height
  | calc <= 18.5 = "slim"
  | calc <= 22.0 = "normal"
  | calc <= 30.0 = "fat"
  | otherwise = "so fat"
  where calc = weight / (height/100) ^ 2

-- initials :: String -> String -> String
-- initials firstname lastname = [f, '.', l]
--   where (f:_) = firstname
--         (l:_) = lastname

initials :: String -> String -> String
initials (f:_) (l:_) = [f, '.', l]

