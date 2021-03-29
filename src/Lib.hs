{-# LANGUAGE FlexibleContexts, NoMonomorphismRestriction, TypeFamilies #-}

module Lib
    ( someFunc
    ) where

import Data.Colour.SRGB(Colour, sRGB)

import Diagrams.Prelude(Diagram)
import Diagrams.Backend.SVG.CmdLine(B)
import Diagrams.TwoD.Attributes(fc)
import Diagrams.TwoD.Ellipse(circle)

cenabled :: Colour Double
cenabled = sRGB 0.7451 0.1765 0.1725

cdisabled :: Colour Double
cdisabled = sRGB 0.8431 0.4980 0.4941

cwater :: Colour Double
cwater = sRGB 0.0000 0.4863 0.7647

cbridge :: Colour Double
cbridge = sRGB 0.5020 0.6275 0.5020

station :: Diagram B
station = circle 125

someFunc :: IO ()
someFunc = putStrLn "someFunc"
