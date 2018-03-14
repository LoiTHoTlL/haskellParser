import System.IO
import Control.Monad
import System.Environment
import Data.List
main = do
        args <- getArgs
	fileIn <- head args
	fileOut <- last args
        contents <- readFile $fileIn
        writeFile $ fileOut $contents

charToString :: Char -> String
charToString = (:[])