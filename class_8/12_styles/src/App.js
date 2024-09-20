import './styles/App.css'
import CssModuleComponent from './CssModuleComponent'
import SassComponent from './SassComponent';
import StyledComponents from './StyledComponent'

function App() {
  return (
    <div className="App">
        <h1>React Styling</h1>
        <hr />
        <CssModuleComponent />
        <hr />
        <SassComponent />
        <hr />
        <StyledComponents />
        <hr />
    </div>
  );
}

export default App;
