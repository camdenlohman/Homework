import React from 'react';
import Request from 'react-http-request'

var text_result;

class People extends React.Component{
  render() {
      return (
        <Request
          url='http://swapi.co/api/people/'
          method='get'
          accept='application/json'
          verbose={true}
        >
          {
            ({error, result, loading}) => {
              if (loading) {
                return <div>loading...</div>;
              } else {
                text_result = result.body.results;
                return <div>
                { JSON.stringify(text_result[0].name) }
                </div>
              }
            }
          }
        </Request>
      );
    }
  }

module.exports = People;

