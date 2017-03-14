var React = require('react');
var ReactDOM = require('react-dom');
var MovieContainer = require('./components/MovieContainer.jsx');

window.onload = function(){
  ReactDOM.render(
    <MovieContainer/>,
    document.getElementById('app')
  );
}
