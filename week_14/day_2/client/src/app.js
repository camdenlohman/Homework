var React = require('react');
var ReactDOM = require('react-dom');

var T20Container = require('./containers/T20Container.jsx');

window.onload = function () {
  ReactDOM.render(
    <T20Container />,
    document.getElementById('app')
  );
};
