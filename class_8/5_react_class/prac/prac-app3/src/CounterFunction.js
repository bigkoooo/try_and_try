import React, { useState } from 'react'

const CounterFunction = (props) => {
    const [number, setNumber] = useState(0);
    const onClickEnter = () => {
        setNumber(number + 1);
    }

    const onClickShit = () => {
        setNumber(number - 2);
    }

  return (
    <div>
        <h2>{number}</h2>
        <button onClick={onClickEnter}>increase</button>
        <button onClick={onClickShit}>decrease</button>
    </div>
  )
}

export default CounterFunction