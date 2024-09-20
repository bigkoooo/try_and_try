import React, { useEffect, useState } from 'react';
import axios from 'axios'; 
import './PostList.css'; 

const PostList = () => {
    const [posts, setPosts] = useState([]); // posts 상태를 정의하고 초기값을 빈 배열로 설정

    useEffect(() => {
        // 컴포넌트가 마운트될 때 데이터를 가져오는 비동기 함수 정의
        const fetchPosts = async () => {
            try {
                const response = await axios.get('https://jsonplaceholder.typicode.com/posts');
                setPosts(response.data); // 데이터를 성공적으로 가져오면 posts 상태를 업데이트
            } catch (error) {
                console.error("Error fetching posts:", error); // 에러 발생 시 콘솔에 출력
            }
        };

        fetchPosts(); // 데이터를 가져오는 함수 호출
    }, []); // 빈 배열을 의존성으로 사용하여 컴포넌트가 처음 렌더링될 때만 실행

    return (
        <>
            <div className='header'> <p>PostList</p> </div> {/* 헤더 영역 */}
            <div className='post-list'>
                {posts.map((value) => {
                    return (
                        <div className='post-wrapper' key={value.id}> {/* 각 포스트를 렌더링 */}
                            <p className='post-title'><span className='post-title-postno'>NO.{value.id}</span> - <span className='post-title-title'>{value.title}</span></p>
                            <p className='post-body'>{value.body}</p>
                        </div>
                    );
                })}
            </div>
        </>
    )
}

export default PostList;
