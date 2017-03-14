import React from 'react'
import ReactDOM from 'react-dom'
import GuessWhoContainer from './containers/GuessWhoContainer.jsx'

window.onload = function () {
  ReactDOM.render(
    <GuessWhoContainer />,
    document.getElementById('app')
  )
}
