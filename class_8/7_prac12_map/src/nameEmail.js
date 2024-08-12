import React, { useState } from 'react';

export default function NameEmail() {
    const [entries, setEntries] = useState([
        { id: 1, name: '코디', email: 'codi@gmail.com' },
        { id: 2, name: '윤소희', email: 'yoonsohee@gmail.com' },
    ]);

    const [inputName, setInputName] = useState('');
    const [inputEmail, setInputEmail] = useState('');

    const addEntry = () => {
        // 이름이나 이메일이 비어있을 경우 추가하지 않음
        if (inputName.trim() === '' || inputEmail.trim() === '') {
            return;
        }

        const newEntry = {
            id: entries.length + 1,
            name: inputName,
            email: inputEmail,
        };

        setEntries([...entries, newEntry]);
        setInputName('');
        setInputEmail('');
    };

    // Enter 키를 눌렀을 때 등록
    const handleKeyDown = (e) => {
        if (e.keyCode === 13) {
            addEntry();
        }
    };

    // 항목 삭제
    const deleteEntry = (targetId) => {
        const newEntries = entries.filter((entry) => entry.id !== targetId);
        setEntries(newEntries);
    };

    return (
        <div>
            <h1>이름과 이메일 등록</h1>

            <input
                type="text"
                placeholder="이름 입력"
                value={inputName}
                onChange={(e) => setInputName(e.target.value)}
                onKeyDown={handleKeyDown}
            />
            <input
                type="email"
                placeholder="이메일 입력"
                value={inputEmail}
                onChange={(e) => setInputEmail(e.target.value)}
                onKeyDown={handleKeyDown}
            />
            <button onClick={addEntry}>등록</button>

            <ul>
                {entries.map((entry) => (
                    <li 
                        key={entry.id}
                        onDoubleClick={() => deleteEntry(entry.id)}  // 더블 클릭 시 항목 삭제
                    >
                        {entry.name}: {entry.email}
                    </li>
                ))}
            </ul>
        </div>
    );
}
