var React = require('react');
var MovieList = require('./MovieList.jsx');

var sampleData = [
  {id: 1, title: "Sausage Party", text: "Showtimes"},
  {id: 2, title: "Cafe Society", text: "Showtimes"}
]

var MovieContainer = React.createClass({
  getInitialState: function(){
    return { data: sampleData }
  },
  render: function() {
    return (
        <div className="movie-container">
          <MovieList movies={this.state.data} />
        </div>
      );
  }
});

module.exports = MovieContainer;
