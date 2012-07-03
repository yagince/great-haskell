lucky :: Int -> String
lucky 7 = "hoge"
lucky x = "foo"

fractional :: Int -> Int
fractional 0 = 1
fractional n = n * fractional (n-1)

addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (x1, x2) (y1, y2) = (x1+y1, x2+y2)
