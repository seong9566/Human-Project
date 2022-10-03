# Getting Started

### 테이블생성 
use database jobs;

CREATE TABLE users (
  users_id integer PRIMARY KEY,
  login_id varchar(20),
  login_password varchar(50),
  personal_id integer,
  company_id integer,
  createdAt timestamp
);


CREATE TABLE company (
  company_id integer PRIMARY KEY,
  company_name varchar(20),
  company_category integer,
  createdAt timestamp
);


CREATE TABLE personal (
  personal_id integer PRIMARY KEY,
  personal_name varchar(20),
  personal_category integer,
  createdAt timestamp
);


CREATE TABLE personal_detail (
  personal_detail_id integer PRIMARY KEY,
  personal_id integer,
  personal_number integer,
  personal_email varchar(50),
  personal_phonenumber integer,
  location varchar(50),
  createdAt timestamp
);


CREATE TABLE company_detail (
  company_detail_id integer PRIMARY KEY,
  company_id integer,
  company_email varchar(50),
  company_number integer,
  company_phonenumber integer,
  location varchar(50),
  createdAt timestamp
);


CREATE TABLE resumes (
  resumes_id integer PRIMARY KEY,
  personal_id integer,
  picture longtext,
  introduce longtext,
  createdAt timestamp
);


CREATE TABLE personal_board (
  personal_board_id integer PRIMARY KEY,
  personal_id integer,
  board_title varchar(50),
  board_content longtext,
  createdAt timestamp
);

CREATE TABLE company_board (
  company_board_id integer PRIMARY KEY,
  company_id integer,
  board_title varchar(50),
  board_content longtext,
  createdAt timestamp
);


CREATE TABLE subscirbe (
  subcirbe_id integer PRIMARY KEY,
  company_id integer,
  personal_id integer,
  createdAt timestamp
);

CREATE TABLE likes (
  like_id integer PRIMARY KEY,
  personal_id integer,
  company_id integer,
  createdAt timestamp
);


CREATE TABLE category (
  category_id integer PRIMARY KEY,
  frontend tinyint,
  backend tinyint,
  devops tinyint,
  etc varchar(50),
  createdAt timestamp
);

CREATE TABLE Apply (
  Apply_id INTEGER PRIMARY KEY,
  company_board_id integer,
  resumes_id integer,
  createdAt timestamp
);

###