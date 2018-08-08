const { createGameState, updatePlayer, guest, serialise } = require("./GameState.purs");
const { unwrap, wrap } = require("../bower_components/purescript-newtype/src/Data/Newtype.purs");

console.log(createGameState("Jordan"), serialise(guest));
