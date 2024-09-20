// PostItem 컴포넌트입니다.
import React from 'react';

// Post 데이터 타입 정의
interface Post {
  id: number;
  title: string;
  body: string;
}

// PostItem 컴포넌트에 전달될 props 타입 정의
interface PostItemProps {
  post: Post;
}

const PostItem: React.FC<PostItemProps> = ({ post }) => {
  return (
    <div className='PostItem'>
      <div>
        <span className='id'>No. {post.id}</span>
        <span className='title'>- {post.title}</span>
      </div>
      <p className='body'>{post.body.slice(0, 120)}...</p>
    </div>
  );
};

export default PostItem;
