{-# LANGUAGE FlexibleContexts, NoMonomorphismRestriction, TypeFamilies #-}

module Lib
    ( someFunc
    ) where

import Data.Colour.SRGB(Colour, sRGB)

import Diagrams.Prelude(Diagram, (#))
import Diagrams.Backend.SVG.CmdLine(B, mainWith)
import Diagrams.TwoD.Attributes(fc)
import Diagrams.TwoD.Ellipse(circle)

lineThickness :: Double
lineThickness = 100

stationRadius :: Double
stationRadius = 125

cenabled :: Colour Double
cenabled = sRGB 0.7451 0.1765 0.1725

cdisabled :: Colour Double
cdisabled = sRGB 0.8431 0.4980 0.4941

cwater :: Colour Double
cwater = sRGB 0.0000 0.4863 0.7647

cbridge :: Colour Double
cbridge = sRGB 0.5020 0.6275 0.5020

croadfg :: Colour Double
croadfg = sRGB 1.0 1.0 0.0

croadbg :: Colour Double
croadbg = sRGB 1.0 0.0 0.0

ctramenabled :: Colour Double
ctramenabled = sRGB 0.0000 0.2000 0.6000

ctramdisabled :: Colour Double
ctramdisabled = sRGB 0.3843 0.5059 0.7529

station :: Diagram B
station = circle stationRadius # fc cenabled

someFunc :: IO ()
someFunc = mainWith (station :: Diagram B)
