create database codingon character set utf8mb4 collate utf8mb4_unicode_ci;

show databases;

use codingon;

-- user 계정 생성
create user 'user'@'%' identified by '12345678'; -- 계정 추가
grant all privileges on *.* to 'user'@'%' with grant option; -- 새로운 계정에 권한 부여
flush privileges; -- 캐시 지우고 새로운 설정 적용

alter user 'user'@'%' identified with mysql_native_password by '12345678'; -- 인증 방식 변경

select * from mysql.user; -- 계정 생성 확인


drop user user;

DROP USER 'test1'@'localhost';
DROP USER 'test2'@'localhost';
DROP USER 'user'@'localhost';
FLUSH PRIVILEGES;


