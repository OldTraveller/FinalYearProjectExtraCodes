CREATE DATABASE uvceplacementwindow;
USE uvceplacementwindow;

CREATE TABLE admin_data (
  STUDENT_USN VARCHAR(10),
  STUDENT_PUBLIC_KEY VARCHAR(50),
  STUDENT_PRIVATE_KEY VARCHAR(50)
);

CREATE TABLE posts (
  POST_ID BIGINT(15),
  POST_NAME VARCHAR(100),
  POST_DESC VARCHAR(500),
  POST_LINK VARCHAR(500),
  POST_SUBJECT_ID INT(11),
  POST_ISSPAM TINYINT(4),
  STUDENT_USN VARCHAR(10)
);

CREATE TABLE student_data (
  STUDENT_USN VARCHAR(10),
  STUDENT_NAME VARCHAR(50),
  STUDENT_BRANCH VARCHAR(5),
  STUDENT_SEMESTER INT(11),
  STUDENT_PUBLIC_KEY VARCHAR(50),
  STUDENT_PRIVATE_KEY VARCHAR(50),
  STUDENT_EMAIL VARCHAR(50), 
  STUDENT_ISVALID TINYINT(4),
  STUDENT_CODEFORCES_HANDLE VARCHAR(50),
  STUDENT_GITHUB_HANDLE VARCHAR(50)
);

INSERT INTO student_data
VALUES ("16GAEC9002", "ABHISHEK KUMAR RAI", "CSE", 8, "c10c0968ec7ff5eac2f00a30c2ff1037944c16eb", 
        "d3343fd5ad4f326eea980acf12315f5cda0e8351", "abhishekrai19999@gmail.com", 1,
        "NOTHING199", "OldTraveller");
INSERT INTO admin_data VALUES ('16GAEC9002', 'c10c0968ec7ff5eac2f00a30c2ff1037944c16eb', 'd3343fd5ad4f326eea980acf12315f5cda0e8351');
