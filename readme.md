
```MariaDB 사용자 생성 및 권한 부여 / 데이터베이스 생성 
CREATE USER 'jobsmatch'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON *.* TO 'jobsmatch'@'%';
CREATE database jobs;

```

```엔티티 수정 내용
company_board테이블 
company_board_picture 추가
personal_detail - location,number 삭제 
company_detail,personal_detail : Phone_number - integer -> varchar로 수정
```

``` 테이블생성 
CREATE TABLE users (
  users_id integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
  login_id varchar(20),
  login_password varchar(50),
  personal_id integer,
  company_id integer,
  createdAt timestamp
);

CREATE TABLE company (
  company_id integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
  company_name varchar(20),
  company_category integer,
  createdAt timestamp
);

CREATE TABLE personal (
  personal_id integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
  personal_name varchar(20),
  personal_category integer,
  createdAt timestamp
);

CREATE TABLE personal_detail (
  personal_detail_id integer NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  personal_id integer,
  personal_email varchar(50),
  personal_phonenumber varchar(20),
  createdAt timestamp
);

CREATE TABLE company_detail (
  company_detail_id integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
  company_id integer,
  company_email varchar(50),
  company_number integer,
  company_phonenumber varchar(20),
  location varchar(50),
  createdAt timestamp
);


CREATE TABLE resumes (
  resumes_id integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
  personal_id integer,
  picture longtext,
  introduce longtext,
  createdAt timestamp
);


CREATE TABLE personal_board (
  personal_board_id integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
  personal_id integer,
  personal_board_title varchar(50),
  personal_board_content longtext,
  createdAt timestamp
);


CREATE TABLE company_board (
  company_board_id integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
  company_id integer,
  company_board_title varchar(50),
  company_board_content longtext,
  company_board_deadline varchar(50),
  company_board_picture longtext,
  createdAt timestamp
);


CREATE TABLE subscribe (
  subscribe_id integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
  company_id integer,
  personal_id integer,
  createdAt timestamp
);


CREATE TABLE personal_like (
  personal_like_id integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
  resumes_id integer,
  company_id integer,
  createdAt timestamp
);


CREATE TABLE company_like (
  company_like_id integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
  personal_id integer,
  company_id integer,
  createdAt timestamp
);

CREATE TABLE category (
  category_id integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
  frontend tinyint,
  backend tinyint,
  devops tinyint,
  etc varchar(50),
  createdAt timestamp
);


CREATE TABLE apply (
  apply_id integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
  company_board_id integer,
  resumes_id integer,
  createdAt timestamp
);






```
``` 관계 설정
ALTER TABLE users ADD FOREIGN KEY (personal_id) REFERENCES personal(personal_id);
ALTER TABLE personal_detail ADD FOREIGN KEY (personal_id) REFERENCES personal (personal_id);
ALTER TABLE users ADD FOREIGN KEY (company_id) REFERENCES company (company_id);
ALTER TABLE resumes ADD FOREIGN KEY (personal_id) REFERENCES personal (personal_id);
ALTER TABLE company_detail ADD FOREIGN KEY (company_id) REFERENCES company (company_id);
ALTER TABLE personal_like ADD FOREIGN KEY (company_id) REFERENCES company (company_id);
ALTER TABLE personal_like ADD FOREIGN KEY (resumes_id) REFERENCES resumes (resumes_id);
ALTER TABLE company_like ADD FOREIGN KEY (company_id) REFERENCES company (company_id);
ALTER TABLE company_like ADD FOREIGN KEY (personal_id) REFERENCES personal (personal_id);
ALTER TABLE company_board ADD FOREIGN KEY (company_id) REFERENCES company (company_id);
ALTER TABLE personal_board ADD FOREIGN KEY (personal_id) REFERENCES personal (personal_id);
ALTER TABLE subscribe ADD FOREIGN KEY (company_id) REFERENCES company (company_id);
ALTER TABLE subscribe ADD FOREIGN KEY (personal_id) REFERENCES personal (personal_id);
ALTER TABLE personal ADD FOREIGN KEY (personal_category) REFERENCES category (category_id);
ALTER TABLE company ADD FOREIGN KEY (company_category) REFERENCES category (category_id);
ALTER TABLE Apply ADD FOREIGN KEY (resumes_id) REFERENCES resumes (resumes_id);
ALTER TABLE Apply ADD FOREIGN KEY (company_board_id) REFERENCES company_board (company_board_id);

```