import { useEffect, useState } from 'react';
import PostItem from './PostItem';

// Post 데이터 타입 정의
interface Post {
  userId: number;
  id: number;
  title: string;
  body: string;
}

const PostList = () => {
  const [posts, setPosts] = useState<Post[]>([]); // 초기 상태에 타입 정의

  useEffect(() => {
    const getPosts = async () => {
      const res = await fetch('https://jsonplaceholder.typicode.com/posts');
      const jsonData: Post[] = await res.json(); // API로부터 받은 데이터에 타입 정의

      setPosts(jsonData.slice(0, 10));
    };

    setTimeout(() => {
      getPosts();
    }, 2000);
  }, []);

  return (
    <div className='PostList'>
      <header>Post List</header>
      {posts.length > 0 ? (
        posts.map((post) => {
          return <PostItem key={post.id} post={post} />;
        })
      ) : (
        <h2>Loading...</h2>
      )}
    </div>
  );
};

export default PostList;
