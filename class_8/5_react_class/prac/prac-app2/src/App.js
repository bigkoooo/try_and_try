import './App.css';
import FunctionComponent from './FunctionComponent';
import BestSellerComponent from './BestSellerComponent';
import ClassFunction from './ClassComponent';

function App() {
  return (
    <div className="App">
        <FunctionComponent />
        <FunctionComponent food="Banana"/>
        <hr />
        <BestSellerComponent title="나의 하루는 시작을 안한다" author="chalkoooo" price="58,000" type="철학서"></BestSellerComponent>
        <hr />
        <ClassFunction text="난 과제 볼 때마다 이해가 안간다 뭔말인지" valid="온클릭으로 이거 지정하라는디?"></ClassFunction>
    </div>
  );
}

export default App;