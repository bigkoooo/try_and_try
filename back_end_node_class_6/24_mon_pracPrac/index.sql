show databases;

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
create user 'test1'@'localhost' identified by '12345678'; -- 계정 추가
grant all privileges on *.* to 'test1'@'localhost' with grant option; -- 새로운 계정에 권한 부여
flush privileges; -- 캐시 지우고 새로운 설정 적용

alter user 'test1'@'localhost' identified with mysql_native_password by '12345678Profile'; -- 인증 방식 변경

drop user 'user1';
select host, user, plugin from mysql.user; -- 계정 생성 확인

desc player;
desc Profile;
desc Team;
