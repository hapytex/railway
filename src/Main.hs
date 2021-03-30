import Diagrams.Backend.SVG.CmdLine(mainWith)

import Lib(startStation)

main :: IO ()
main = mainWith startStation
