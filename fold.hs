map' :: (a -> b) -> [a] -> [b]
map' f xs = foldl (\ret a -> ret ++ [f a]) [] xs

map'' :: (a -> b) -> [a] -> [b]
map'' f (x:xs) = foldr (\a ret -> f a : ret) [] xs