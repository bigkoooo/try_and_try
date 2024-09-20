import React, { useState } from 'react'

const SayFunction = () => {

    const [message, setMessage] = useState("Hello World!");
    
    const onClickEnter = () => {
        setMessage('Goodye World!');
    }


  return (
    <div>
        <h1>Function Component State</h1>
        <button onClick={onClickEnter}>얕같은 세상 빨리 퇴장하는게 답</button>
        
        <h1>{message}</h1>
    </div>
  )
}

export default SayFunction