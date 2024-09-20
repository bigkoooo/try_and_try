import Card from './components/Card';
import Student from './components/Students';

function App() {
    // #1.
    const handleClick = (name: string, grade: number): void => {
        console.log(`안녕 난 ${name}이고, ${grade}학년이야!`);
    };
    return (
        <div className="App">
            <Student name="새싹" grade={3} handleClick={handleClick} />
            <hr />

            <Card title="오늘 배울 것은?">
                <p>TypeScript with React</p>
            </Card>
        </div>
    );
}

export default App;