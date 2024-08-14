import React, { useState, useRef } from 'react';

export default function Board() {
    const [entries, setEntries] = useState([]);
    const [author, setAuthor] = useState('');
    const [title, setTitle] = useState('');
    const [searchKeyword, setSearchKeyword] = useState('');
    const [searchType, setSearchType] = useState('author'); // 기본 검색 타입: 작성자
    const [searchResults, setSearchResults] = useState([]);

    // useRef로 작성자와 제목의 input 요소를 참조
    const authorRef = useRef(null);
    const titleRef = useRef(null);

    // 엔터키를 눌렀을 때 addEntry 함수를 호출하는 함수
    const handleKeyPress = (e) => {
        if (e.key === 'Enter') {
            addEntry(); // 엔터키를 누르면 addEntry 함수 호출
        }
    };

    const addEntry = () => {
        // 작성자 또는 제목이 비어있으면 해당 input 창에 포커스를 이동
        if (author.trim() === '') {
            authorRef.current.focus(); // 작성자 input에 포커스
            return;
        }
        if (title.trim() === '') {
            titleRef.current.focus(); // 제목 input에 포커스
            return;
        }

        const newEntry = {
            id: entries.length + 1,
            author: author,
            title: title,
        };

        setEntries([...entries, newEntry]);
        setAuthor('');
        setTitle('');
    };

    const handleSearch = () => {
        let results = [];

        if (searchType === 'author') {
            results = entries.filter(entry =>
                entry.author.includes(searchKeyword)
            );
        } else if (searchType === 'title') {
            results = entries.filter(entry =>
                entry.title.includes(searchKeyword)
            );
        }

        setSearchResults(results);
    };

    return (
        <div>
            <h1>게시판</h1>
            <div>
                <label>작성자: </label>
                <input
                    type="text"
                    value={author}
                    onChange={(e) => setAuthor(e.target.value)}
                    ref={authorRef} // 작성자 input에 ref 연결
                    onKeyPress={handleKeyPress} // 엔터키 눌림 감지
                />
                <label>제목: </label>
                <input
                    type="text"
                    value={title}
                    onChange={(e) => setTitle(e.target.value)}
                    ref={titleRef} // 제목 input에 ref 연결
                    onKeyPress={handleKeyPress} // 엔터키 눌림 감지
                />
                <button onClick={addEntry}>작성</button>
            </div>
            <hr />
            <table border="2">
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                    </tr>
                </thead>
                <tbody>
                    {entries.map((entry) => (
                        <tr key={entry.id}>
                            <td>{entry.id}</td>
                            <td>{entry.title}</td>
                            <td>{entry.author}</td>
                        </tr>
                    ))}
                </tbody>
            </table>
            <hr />
            <h2>검색</h2>
            <div>
                <select
                    value={searchType}
                    onChange={(e) => setSearchType(e.target.value)}
                >
                    <option value="author">작성자</option>
                    <option value="title">제목</option>
                </select>
                <input
                    type="text"
                    placeholder="검색어"
                    value={searchKeyword}
                    onChange={(e) => setSearchKeyword(e.target.value)}
                />
                <button onClick={handleSearch}>검색</button>
            </div>
            <hr />
            <h3>검색 결과</h3>
            <table border="2">
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                    </tr>
                </thead>
                <tbody>
                    {searchResults.map((entry) => (
                        <tr key={entry.id}>
                            <td>{entry.id}</td>
                            <td>{entry.title}</td>
                            <td>{entry.author}</td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </div>
    );
}
