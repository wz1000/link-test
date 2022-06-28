{-# LANGUAGE TemplateHaskell #-}
module MyLib (someFunc) where
import Data.Text (Text)
import qualified Data.Text as T
import Debug.Trace
 
someFunc :: IO ()
someFunc = putStrLn "someFunc"

$( do
      traceShowM $ T.length $ T.pack "asdf"
      pure []
    )
