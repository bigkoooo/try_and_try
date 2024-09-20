
import './App.css';

function App() {
  const name1 = 'luck'
  const name2 = 'happy'
  const animal = 'poodle'
  const borderColor = 'rgb(0, 128, 0)';
  let a 
  let b
  const title = 'Hello World'
  return (
    <div className="App">
      <div style ={{
        border: `2px dashed ${borderColor}`,
        
        padding: '10px',
        margin: '10px',
      }}>
        <h2>제 반려 동물의 이름은 {name1},{name2}입니다.</h2><br></br>
        <h2>{name1},{name2}는 {animal}입니다.</h2>
      </div>
      
      <div>
        {'3+5' == '8' ? <span>정답입니다.</span> : <span>오답입니다!</span>}
      </div>

      <div>
        { a > b ? <span>a가 b보다 큽니다.</span> : <span>a가 b보다 같거나 작습니다..</span>}
      </div>
      
      <div className = "prac4">
        <h2 className = "what">{title}</h2>
        <label htmlfor='id'>아이디</label>
        <input type='id'></input><br></br><br></br>
        <label htmlfor='password'>비밀번호</label>
        <input type='password'></input>
      </div>
    </div>

    
    
  );
}

export default App;
