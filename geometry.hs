module Geometry
    ( sphereVolume
    , sphereArea
    , cubeVolume
    , cubeArea
    , cubioArea
    , cubioVoume
    ) where

    sphereVolume :: Float -> Float
    sphereVolume radius = (4.0 / 3.0) * pi (radius ^ 3)

    sphereArea :: Float -> Float
    sphereArea radius = 4 * pi * (radius ^ 2 )

    cubeVolume :: Float -> Float
    cubeVolume side = cubioVoume side side side

    cubeArea :: Float -> Float
    cubeArea side = cubioArea side side side

    cubioVoume :: Float -> Float -> Float -> Float
    cubioVoume a b c = rectArea a b * c

    cubioArea :: Float -> Float -> Float -> Float
    cubioArea a b c = rectArea a b * 2 + rectArea a c * 2 + rectArea c b * 2

    rectArea :: Float -> Float -> Float
    rectArea  a b = a * b