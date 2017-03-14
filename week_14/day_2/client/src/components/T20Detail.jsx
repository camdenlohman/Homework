var React = require('react');

var T20Detail = function(props) {
  if(!props.T20) {
    return <h4> No T20 Selected. </h4>
  }
  return (
    <div>
    
    <h4>{props.T20.title}</h4>
    <h5>{props.T20}</h5>
    </div>
    );
};

module.exports = T20Detail;
