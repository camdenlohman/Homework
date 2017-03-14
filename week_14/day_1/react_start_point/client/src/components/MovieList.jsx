var React = require('react');
var Movie = require('./Movie.jsx');

var MovieList = React.createClass({

    

    render: function() {
        var movieNodes = this.props.movies.map(function(movie) {
          return (
          <Movie title={movie.title}>
            {movie.text}
          </Movie>
          )
        })
      return (
        <div className="movie-list">
        {movieNodes}
        </div>
        )
    }
});

module.exports = MovieList;