import React from 'react';
import { render } from 'react-dom'
import { Router, Route, IndexRoute, hashHistory} from 'react-router'
import Main from './components/Main'
import Home from './components/Home'
import Planets from './components/Planets'
import People from './components/People'
import Ships from './components/Ships'

window.onload = () => {
  render(
    <Router history={hashHistory}>
      <Route path='/' component={Main}>
        <IndexRoute component={Home}/>
        <Route path='home' component={Home}/>
        <Route path='planets' component={Planets}/>
        <Route path='people' component={People}/>
        <Route path='ships' component={Ships}/>
      </Route>
    </Router>,
    document.getElementById('app')
    );
}
