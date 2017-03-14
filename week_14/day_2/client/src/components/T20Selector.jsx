var React = require('react');

var T20Selector = React.createClass({


  getInitialState: function () {
    return { selectedIndex: undefined };
  },

  render: function () {
    if (!this.props.T20s.feed) {
      return <h2>No entries</h2>
    }
    var options = this.props.T20s.feed.entry.map(function(T20, index) {
      return <option value={index} key={index}>{T20["im:artist"]["label"]}</option>
    });
    return (
      <select id="T20s" value={this.state.selectedIndex} onChange={this.handleChange}>
       {options}
      </select>
    );
  },
  handleChange: function(event) {
    var newIndex = event.target.value;
    this.setState({selectedIndex: newIndex});

    var selectedT20 = this.props.T20s[newIndex];
    this.props.didSelectT20(selectedT20)
  }
});

module.exports = T20Selector;
