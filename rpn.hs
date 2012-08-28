rpn :: String -> Int
rpn = head . foldl func [] . words
    where func (x:y:ys) "*" = (y * x) : ys
          func (x:y:ys) "+" = (y + x) : ys
          func (x:y:ys) "-" = (y - x) : ys
          func (x:y:ys) "/" = (y / x) : ys
          func (x:y:ys) "^" = (y ** x) : ys
          func xs numberStr = read numberStr:xs
