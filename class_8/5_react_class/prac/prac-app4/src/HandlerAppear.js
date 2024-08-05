import React, { useState } from 'react'

const AppearFunction = () => {
   
    const [message, setMessage] = useState("안냐세윰");
    
    const onClickEnter = () => {
        setMessage('안녕하세요!');
    }

    const onClickLeave = () => {
        setMessage('');
    }

    const handleClick = () => {
        setMessage((currentMessage) => {
            return currentMessage === '안냐세윰' ? "흐흐흐" : "킄킄킄";
        })
    }
  return (
    <div>
        
        <h1>Function Component State</h1>
        <button onClick={onClickEnter}>나타난다</button>
        <button onClick={onClickLeave}>사라진다</button>
        <button onClick={handleClick}>HI</button>
        <h1>{message}</h1>
    </div>
  )
}

export default AppearFunction