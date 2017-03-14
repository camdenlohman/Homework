import React from 'react'

const GameInfo = ({
  player,
  opponent,
  gameOver,
  guessWhoGame,
}) => (
  <div className='game-info'>
    {!gameOver && <p>Current player: {player}</p>}
    {gameOver && !guessWhoGame && <p>Winner: {opponent}</p>}
    {guessWhoGame && <p>Guess Who</p>}
  </div>
)

export default GameInfo
