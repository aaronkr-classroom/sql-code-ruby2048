CREATE TABLE 교수 (
    교수ID INT PRIMARY KEY,
    교번 VARCHAR(20),
    교수명 VARCHAR(50)
);
CREATE TABLE 강의실 (
    강의실ID INT PRIMARY KEY,
    강의실번호 VARCHAR(20),
    좌석수 INT
);
CREATE TABLE 교과목 (
    교과목ID INT PRIMARY KEY,
    과목번호 VARCHAR(20),
    과목명 VARCHAR(50)
);
CREATE TABLE 학생 (
    학생ID INT PRIMARY KEY,
    학번 VARCHAR(20),
    학생명 VARCHAR(50)
);
CREATE TABLE 보호자 (
    보호자ID INT PRIMARY KEY,
    이름 VARCHAR(50),
    학생ID INT,
    FOREIGN KEY (학생ID) REFERENCES 학생(학생ID)
);
CREATE TABLE 강의 (
    강의ID INT PRIMARY KEY,
    교수ID INT,
    강의실ID INT,
    교과목ID INT,
    FOREIGN KEY (교수ID) REFERENCES 교수(교수ID),
    FOREIGN KEY (강의실ID) REFERENCES 강의실(강의실ID),
    FOREIGN KEY (교과목ID) REFERENCES 교과목(교과목ID)
);
CREATE TABLE 수강신청 (
    수강신청ID INT PRIMARY KEY,
    신청날짜 DATE,
    학생ID INT,
    교과목ID INT,
    FOREIGN KEY (학생ID) REFERENCES 학생(학생ID),
    FOREIGN KEY (교과목ID) REFERENCES 교과목(교과목ID)
);
CREATE TABLE 수강취소 (
    수강취소ID INT PRIMARY KEY,
    취소날짜 DATE,
    학생ID INT,
    교과목ID INT,
    FOREIGN KEY (학생ID) REFERENCES 학생(학생ID),
    FOREIGN KEY (교과목ID) REFERENCES 교과목(교과목ID)
);
CREATE TABLE 멘토링 (
    멘토링ID INT PRIMARY KEY,
    학생ID INT,
    FOREIGN KEY (학생ID) REFERENCES 학생(학생ID)
);
