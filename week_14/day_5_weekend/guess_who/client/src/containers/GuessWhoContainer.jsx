import React, {Component} from 'react'
import Board from '../components/Board.jsx'
import GameInfo from '../components/GameInfo.jsx'
import SimpleButton from '../components/generic/SimpleButton.jsx'
import {
  winningSection,
  isCatsGame,
  getOtherPlayer,
  isGridComplete,
  isGameOver,
} from '../functions/gameLogic.js'

class GuessWhoContainer extends Component {
  constructor (props) {
    super(props)
    this.state = {
      grid: ['', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',''],
      player: 'Player',
      opponent: 'Opponent',
      guessWhoGame: false,
      gameOver: false,
      winningTile: [],
    }
  }
  handleTileClick = (event) => {
    const index = event.target.dataset.index
    const grid = this.state.grid.slice()
    grid[index] = this.state.player
    const player = getOtherPlayer(this.state.player)
    const opponent = getOtherPlayer(this.state.opponent)
    const gameOver = isGameOver(grid)
    // const guessWhoGame = isGuessWhoGame(grid)
    const winningTile = winningSection(grid)
    this.setState({
      grid,
      player,
      opponent,
      // guessWhoGame,
      winningTile,
      gameOver,
    })
  }
  render = () => (
    <div>
      <Board
      grid={this.state.grid}
      handleTileClick={this.handleTileClick}
      gameOver={this.state.gameOver}
      winningTile={this.state.winningTile}
      />
      <GameInfo
      player={this.state.player}
      opponent={this.state.opponent}
      gameOver={this.state.gameOver}
      // catsGame={this.state.guessWhoGame}
      />
      <SimpleButton
      text='Guess'
      />
      <SimpleButton
      onClick={this.restartGame}
      text='More Info'
      />
    </div>
  )
}

export default GuessWhoContainer
