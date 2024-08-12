import React, { useState } from 'react';

export default function Board() {
    const [entries, setEntries] = useState([]);
    const [author, setAuthor] = useState('');
    const [title, setTitle] = useState('');
    const [searchKeyword, setSearchKeyword] = useState('');
    const [searchType, setSearchType] = useState('author'); // 기본 검색 타입: 작성자
    const [searchResults, setSearchResults] = useState([]);

    const addEntry = () => {
        // 작성자 또는 제목이 비어있으면 항목을 추가하지 않음
        if (author.trim() === '' || title.trim() === '') {
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
                />
                <label>제목: </label>
                <input
                    type="text"
                    value={title}
                    onChange={(e) => setTitle(e.target.value)}
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
