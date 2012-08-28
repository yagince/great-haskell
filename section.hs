data Section = Section { getA::Int, getB::Int, getC::Int }
               deriving (Show)

type RoadSystem = [Section]

sample :: RoadSystem
sample = [ Section 50 10 30
         , Section 4 90 20
         , Section 40 2 25
         , Section 10 8 0
         ]

data Label = A | B | C deriving (Show)
type Path = [(Label,Int)]

roadStep :: (Path, Path) -> Section -> (Path, Path)
roadStep (pathA, pathB) (Section a b c) =
    let timeA = sum $ map snd pathA
        timeB = sum $ map snd pathB
        forwardTimeToA = timeA + a
        crossTimeToA   = timeB + b + c
        forwardTimeToB = timeB + b
        crossTimeToB   = timeA + a + c
        newPathToA = if forwardTimeToA <= crossTimeToA
                     then (A, a):pathA
                     else (C, c):(B ,b):pathA
        newPathToB = if forwardTimeToB <= crossTimeToB
                     then (B, b):pathB
                     else (C, c):(A ,a):pathB
    in (newPathToA, newPathToB)

optimalPath :: RoadSystem -> Path
optimalPath roadsystem =
    let (pathA, pathB) = foldl roadStep ([], []) roadsystem
    in if sum (map snd pathA) <= sum ( map snd pathB)
       then reverse pathA
       else reverse pathB