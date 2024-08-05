import './App.css';
import SayFunction from './components/ex/HandlerEx';
import ColorFunction from './HandlerColor';
import AppearFunction from './HandlerAppear';

function App() {
  return (
    <div className="App">
      <SayFunction/>
      <hr />
      <ColorFunction/>
      <hr />
      <AppearFunction/>
    </div>
  );
}

export default App;