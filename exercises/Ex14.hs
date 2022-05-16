type Name      = String
type Surname   = String
type SendOffer = Bool

data Client = Client{
    name      :: Name,
    surname   :: Surname,
    sendOffer :: SendOffer
} deriving (Show)

sendOfferTrue :: [Client] -> [Client]
sendOfferTrue [] = []
sendOfferTrue (x : xs) 
    | sendOffer x = x : sendOfferTrue xs
    | otherwise = sendOfferTrue xs

-- sendOfferTrue [(Client "name" "surname" boolean), ...]

sendOfferTrueWithFilter :: [Client] -> [Client]
sendOfferTrueWithFilter [] = []
sendOfferTrueWithFilter (x : xs) = filter sendOffer (x : xs)