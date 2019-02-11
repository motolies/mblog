USE MYSQL;

# 사용자 추가(로컬용)
INSERT INTO USER(HOST,USER,PASSWORD,SSL_CIPHER,X509_ISSUER,X509_SUBJECT, authentication_string)
VALUES ('localhost','mblog',PASSWORD('mblog'),'','','','');

# 변경사항 적용(변경사항이 있으면 항상 적용해야함)
FLUSH PRIVILEGES;

# db 생성
CREATE DATABASE mblog;

# 특정 사용자에게 특정 DB의 모든 권한 부여하기
GRANT ALL PRIVILEGES ON mblog.* TO `mblog`@localhost IDENTIFIED BY 'mblog';

# 변경사항 적용(변경사항이 있으면 항상 적용해야함)
FLUSH PRIVILEGES;

# 사용자 정보 조회
SELECT * FROM USER;

