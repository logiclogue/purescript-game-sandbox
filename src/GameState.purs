module GameState(
    GameState, UserType, createGameState, updatePlayer, guest, class Serialise,
    serialise
) where

import Prelude (class Show, (<>))
import Data.Newtype (class Newtype)

newtype GameState = GameState {
    player :: String
}

data UserType = Admin | Guest

instance newtypeGameState :: Newtype GameState String where
    unwrap (GameState { player }) = player
    wrap   player                 = GameState { player: player }

instance showUserType :: Show UserType where
    show Admin = "Admin"
    show Guest = "Admin"

class Serialise a where
    serialise :: a -> String

instance serialiseGameState :: Serialise GameState where
    serialise (GameState { player }) = "{" <> player <> "}"

createGameState :: String -> GameState
createGameState player = GameState { player }

updatePlayer :: (String -> String) -> GameState -> GameState
updatePlayer f (GameState gameState) = GameState (gameState { player = f gameState.player })

guest :: UserType
guest = Guest
