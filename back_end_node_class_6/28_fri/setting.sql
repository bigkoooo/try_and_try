show databases;

create database codingon default character set utf8 default collate utf8_general_ci;

use codingon;

create table visitor (
	id int primary key auto_increment,
    name varchar(10) not null,
    comment mediumtext
);

desc visitor;

-- 데이터 추가
insert into visitor values
	(null, '홍길동', '내가 왔다.'), 
    (null, '이찬혁', '으라차차');

select * from visitor;

-- user 계정 생성
create user 'user1'@'%' identified by '12345678'; -- 계정 추가
grant all privileges on *.* to 'user1'@'%' with grant option; -- 새로운 계정에 권한 부여
flush privileges; -- 캐시 지우고 새로운 설정 적용

alter user 'user1'@'%' identified with mysql_native_password by '12345678'; -- 인증 방식 변경

select * from mysql.user; -- 계정 생성 확인