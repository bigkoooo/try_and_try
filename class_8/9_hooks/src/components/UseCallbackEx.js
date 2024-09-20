import React, {useState} from 'react'

export default function UseCallbackEx() {

    const [text, setText] = useState('')

    // [before]


    // const onChangeText = (e) => {
    //     setText(e.target.value);
    // };

    // [after]

    const onChangeText = useCallback((e) => {
        setText(e.target.value);
    },[]);
    
  return (
    <div>
        <h1>UseCallbackEx</h1>
        <input type="text" onChange={onChangeText}/>    
        <div>작성한 값:{text || '없음'}</div>
    </div>
  )
}
