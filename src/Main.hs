import Diagrams.Backend.SVG.CmdLine(mainWith)

import Lib(station)

main :: IO ()
main = mainWith station
