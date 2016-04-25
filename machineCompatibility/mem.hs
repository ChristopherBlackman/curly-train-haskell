import System.Environment
import Data.Set as Set

main = do
         args <- getArgs
         let n = (read $ args !! 0) :: Int
             s = Set.fromList [0..n]
         do
           putStrLn $ "min: " ++ (show $ findMin s)
           putStrLn $ "max: " ++ (show $ findMax s)
