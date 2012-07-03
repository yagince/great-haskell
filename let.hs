clinder :: Double -> Double -> Double
clinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^ 2
    in sideArea + 2 * topArea

hogeCalc :: Int -> Int
hogeCalc num =
    let hoge = num + 2
        foo = num + 1
    in hoge + foo


multiplication :: [(Int, Int)] -> [Int]
multiplication xs = [multi | (a, b) <- xs, let multi = a * b]
