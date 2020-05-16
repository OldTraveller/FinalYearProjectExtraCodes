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
    STUDENT_ISVALID TINYINT(4),
    STUDENT_CODEFORCES_HANDLE VARCHAR(50),
    STUDENT_GITHUB_HANDLE VARCHAR(50) 
); 