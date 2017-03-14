var React = require('react');

var Movie = React.createClass({
  propTypes: {
    movies: React.PropTypes.array.isRequired
  },
  render: function(){
    return (
      <div id="movie"className="movie">
      <div id="show_1">{this.props.title || "Anon"}</div> <div id="show_2">{this.props.children}</div>
      </div>
      )
  }

});

module.exports = Movie;