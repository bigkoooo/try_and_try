import React, { Component } from 'react'

export default class Counter extends Component {

    state = {
        count : 0,
    }

  render() {
    // 방법 #2
    const {count} = this.state;
    return (
      <div>
        <h1>Class Component State</h1>
        
        <h2>{count}</h2>

        {/* 값 변경하기 */}
        <button onClick={() => {
            this.setState({count : count + 2});
        }}>+2</button>
        <button onClick={() => {
            this.setState({count : count - 1});
        }}>-1</button>
      </div>
    )
  }
}