deriving instance Show Client

type Name      = String
type Surname   = String
type SendOffer = Bool

data Client = Client{
    name      :: Name,
    surname   :: Surname,
    sendOffer :: SendOffer
}

sendOfferTrue :: [Client] -> [Client]
sendOfferTrue [] = []
sendOfferTrue (x : xs) 
    | (sendOffer x) == True = x : sendOfferTrue xs
    | otherwise = sendOfferTrue xs

-- sendOfferTrue [(Client "name" "surname" boolean), ...]

sendOfferTrueWithFilter :: [Client] -> [Client]
sendOfferTrueWithFilter (x : xs) = filter (\x -> (sendOffer x) == True) (x : xs)