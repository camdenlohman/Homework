import React from 'react'
import Tile from './Tile.jsx'

const Board = ({
  grid,
  handleTileClick,
  winningTile,
  wrong,
  gameOver,
}) => (
  <div className='board'>
    {grid.map((tile, index) => (
      <Tile
      key={index}
      symbol={tile}
      wrong={tile !== ''}
      // winner={winningTile.includes(index)}
      gameOver={gameOver}
      index={index}
      handleClick={handleTileClick}
      />)
    )}
  </div>
)

export default Board
