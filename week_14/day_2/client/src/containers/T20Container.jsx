var React = require('react');
var T20Selector = require('../components/T20Selector');
var T20Detail = require('../components/T20Detail');

var T20Container = React.createClass({

  componentDidMount: function() {
    var url = 'https://itunes.apple.com/gb/rss/topsongs/limit=20/json';
    var request = new XMLHttpRequest();
    request.open('GET', url);

    request.onload = function() {
      if( request.status !== 200) return;
        var data = JSON.parse(request.responseText);
        console.log(data);
        this.setState({T20s: data, focusT20: data[0]});
      }.bind(this);


      request.send();
    },

    getInitialState: function () {
      return { T20s : [], focusT20: null};
    },

    render: function () {
      return (
        <div id="MainDiv">
        <T20Selector T20s={this.state.T20s} didSelectT20={this.didSelectT20} />
        <T20Detail T20={this.state.focusT20} />
        </div>
        );
    },

    didSelectT20: function(T20) {
      this.setState({ focusT20: T20});
    }


  });

module.exports = T20Container;
