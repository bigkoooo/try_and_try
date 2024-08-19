import { useDispatch, useSelector } from 'react-redux';
import { minus, plus } from './store/counterSlice';
import { useState } from 'react';

function App() {
    const number = useSelector((state) => state.counter.number);
    console.log('number >>>>> ', number);

    return (
        <div className="App">
            <h1>코딩온 은행</h1>
            <Box1 />
        </div>
    );
}

// Box1 컴포넌트
const Box1 = () => {
    const number = useSelector((state) => state.counter.number);
    const dispatch = useDispatch();
    const [firstmoney, setmoney] = useState('');

    const handleDeposit = () => {
        const amount = parseInt(firstmoney, 10); 
        if (!isNaN(amount)) {
            dispatch(plus(amount)); 
            setmoney(''); 
        }
    };

    const handleWithdrawal = () => {
        const amount = parseInt(firstmoney, 10); 
        if (!isNaN(amount)) {
            dispatch(minus(amount)); 
            setmoney(''); 
        }
    };

    return (
        <div className="Box4">
            <h2>잔액 : {number}원</h2>
            <input
                type='number'
                value={firstmoney}
                onChange={(e) => setmoney(e.target.value)}
            />
            <button onClick={handleDeposit}>입금</button>
            <button onClick={handleWithdrawal}>출금</button>
        </div>
    );
};

export default App;