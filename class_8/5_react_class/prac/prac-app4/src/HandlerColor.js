import React, { useState } from 'react'

const ColorFunction = () => {
   
    const [color, setColor] = useState("black");


    // const [message, setMessage] = useState("까멜레온");
    
  return (
    <div>
        
        <h1>Function Component State</h1>

        <h2 style={{ color }}>까멜레온</h2>

        <button
        style={{ color: "red" }}
        onClick={() => {
          setColor("red");
        }}
      >
        빨간색
      </button>

      <button
        style={{ color: "blue" }}
        onClick={() => {
          setColor("blue");
        }}
      >
        v파란색
      </button>

      <button
        style={{ color: "black" }}
        onClick={() => {
          setColor("black");
        }}
      >
        검정색
      </button>
        

        
    </div>
  )
}

export default ColorFunction