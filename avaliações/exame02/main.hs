newtype Parser s a
      = Parser {
          runParser :: [s] -> [(a,[s])]
        }


instance Functor (Parser s) where
    fmap f (Parser p)
       = Parser (\ inp -> [(f x, xs) | (x,xs) <- p inp])

symbol :: Eq s => s -> Parser s s
symbol s = Parser $ \ input -> case input of 
                            [] -> []
                            (x : xs) -> if x == s
                                            then [(s, xs)]
                                                else []

parseTime :: Parser Char (Int, Int)
parseTime = Parser $ \ input -> case input of 
                                    [] -> []
                                    xs -> if ':' `elem` xs && length xs == 5
                                            then [((number $ take 2 xs, number $ drop 3 xs), "")]
                                                else []
        
        where
            number :: String -> Int
            number x = read x :: Int