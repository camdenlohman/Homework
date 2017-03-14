import React from 'react'
import classNames from 'classnames'

const Tile = ({
  handleClick,
  wrong,
  winner,
  gameOver,
  index,
  symbol,
}) => (
  <div
    className={classNames('tile', {
      'cell-wrong': wrong,
      'cell-winner': winner,
      'cell-game-over': gameOver,
    })}
    data-index={index}
    onClick={wrong || winner || gameOver ? null : handleClick}
    >{symbol}
  </div>
)

export default Tile
