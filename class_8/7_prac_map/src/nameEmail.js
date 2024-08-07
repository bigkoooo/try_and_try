import React, { useState } from 'react';

export default function NameEmail() {

    const [name, setName] = useState([
        {
            id: 1,
            name: 'a',
        },
        {
            id: 2,
            name: 'p',
        },
        {
            id: 3,
            name: 'p',
        },
        {
            id: 4,
            name: 'l',
        },
        {
            id: 5,
            name: 'e',
        },
    ]);

    const [inputName, setinputName] = useState('');
    
    const addName = () => {
        // Q. input이 빈값이라면 alphabet 상태가 변경되지 않도록 하기
        if (inputName.trim().length === 0) {
            return;
        }
        const newName = name.concat({
            id: name.length + 1,
            name: inputName,
        });

        setName(newName);
        setinputName(''); // 입력 칸 초기화
    };

    // 글자 삭제
    const deleteName = (targetId) => {
        console.log('targetId >>> ', targetId); // targetId : 삭제될 요소의 Id = value.id

        const newName = name.filter((name) => name.id !== targetId);
       

        setName(newName);
    };
// -----------------
    const [email, setEmail] = useState([
        {
            id: 1,
            email: 'a',
        },
        {
            id: 2,
            email: 'p',
        },
        {
            id: 3,
            email: 'p',
        },
        {
            id: 4,
            email: 'l',
        },
        {
            id: 5,
            email: 'e',
        },
    ]);

    const [inputEmail, setinputEmail] = useState('');
    
    const addEmail = () => {
        // Q. input이 빈값이라면 alphabet 상태가 변경되지 않도록 하기
        if (inputEmail.trim().length === 0) {
            return;
        }
        const newEmail = name.concat({
            id: email.length + 1,
            name: inputEmail,
        });

        setEmail(newEmail);
        setinputEmail(''); // 입력 칸 초기화
    };

    // 글자 삭제
    const deleteEmail = (targetId) => {
        const newEmail = email.filter((name) => email.id !== targetId);
       

        setEmail(newEmail);
    };


    //  키보드 이벤트
    const handleKeyDown = (e) => {
        console.log(e);

        // if (e.code === 'Enter') {
        //     addAlpha();
        // }

        if (e.keyCode === 13) {
            addName();
        }
    };
    return (
        <div>
            <h1>Map & Filter</h1>
            
            {/* 알파벳 추가해보기 */}
            <input
                type="text"
                placeholder="name 입력"
                value={inputName}
                onChange={(e) => {
                    setinputName(e.target.value);
                }}
                // Q2) input에서 enter 키 누르면 추가되도록!
                onKeyDown={(e) => handleKeyDown(e)}
            />
            <input
                type="text"
                placeholder="email 입력"
                value={inputEmail}
                onChange={(e) => {
                    setinputEmail(e.target.value);
                }}
                // Q2) input에서 enter 키 누르면 추가되도록!
                onKeyDown={(e) => handleKeyDown(e)}
            />
            <button onClick={addName()} >추가</button>

            {/* 알파벳 삭제해보기 */}
            <ul>
                {name.map((value) => (
                    <li
                        key={value.id}
                        onDoubleClick={() => deleteName(value.id)}
                    >
                        {value.name}
                    </li>
                ))}
            </ul>
        </div>
    );
}