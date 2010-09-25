
import Data.ByteString.UTF8  (toString)
import Data.ByteString.Char8 (pack)
import System.Environment

import Codec.MIME.String

toUtf8 :: String -> String
toUtf8 = toString . pack

main = do
    [m] <- getArgs  -- argument: filepath of mail
    s <- readFile m
    let (Body _ _ t) = m_message_content $ parse s
    putStrLn $ t
