-- Create database CT_Quiz-DB
DROP DATABASE IF EXISTS CT_Quiz_DB;
CREATE DATABASE CT_Quiz_DB;

 

-- select the database 
USE CT_Quiz_DB;

 

-- create the tables 
CREATE TABLE Users
(
    User_ID            int              primary key            auto_increment,
    User_firstName    varchar(50)       not null,
    User_LastName    varchar(50)        not null,
    User_Mail        varchar(100)   	not null
);

 

-- create the tables 
CREATE TABLE Category
(
    Category_ID            int                primary key            auto_increment,
    Category_Name        varchar(50)        not null
);

 

-- create the tables 
CREATE TABLE Question
(
    Question_ID        int                primary key            auto_increment,
    Question_text    varchar(10000)    not null,
       default_Category_ID    int            not null,
    constraint Question_fk_category
        foreign key (default_Category_ID)
        references Category(Category_ID)
);

CREATE TABLE Option_s

(
	Option_ID	int						primary key					auto_increment,
    Option_descr varchar(10)			not null,
    Points		int
);

 

CREATE TABLE Answer
(
    Answer_ID    			int                 primary key                auto_increment,
    default_User_ID        	int            		not null,
    default_Question_ID    	int            		not null,
    default_Option_ID		int					not null,
    dates date, 										
    
    constraint Answer_fk_Users
        foreign key (default_User_ID)
        references Users (User_ID),
    constraint Answer_fk_Question
        foreign key (default_Question_ID)
        references Question (Question_ID),
	constraint Answer_fk_Option_s
		foreign key (default_Option_ID)
        references Option_s (Option_ID)
);

 


-- Add Users Data
INSERT INTO Users (User_firstName, User_lastName, User_Mail) values 
('Brian','Olsen','B-Olsen@gotmail.com'),
('Shantelle','Lambert','Shan_Lambert@hotmail.com'), 
('Katie','Hamilton','Katilton@gmail.com'), 
('Khia','Pruitt','Pruitt_Khia@outlook.com'), 
('Glen','Murray','Murray98@hotmail.com'), 
('Tomas','Howell','T_Howell@UST.com'), 
('Gurli','pattersen','Gurli.Pattersen@gmail.com')
;

 

-- Add Categories 
INSERT INTO Category (Category_Name) values
('Creative'),
('Development'),
('Digital Marketing');

 

 

-- Add Question
INSERT INTO Question (Question_Text,default_Category_ID) Values
-- Creative Questions
('Do you appreciate design in relation to products?',1),
('Do you have a favourite artist when it comes to visual art?',1),
('Do you enjoy making visual presentations for school or business?',1),
('Have you tried editing video on your mobile device or PC?',1),

 

-- Development Questions
('Do you like to take online intelligence tests?',2),
('Do you find numbers and logic is preferred over philosophical questions?',2),
('Are you interested in coding and learning to either understand or code yourself?',2),
('Have you tried building a website with a CMS like wordpress or Wix?',2),

 


-- Digital Marketing
('Are you very active on Social Media?',3),
('Do you care about who likes and comments on your posts?',3),
('Do you find that Social Media influences your buying decisions?',3),
('Do you believe that Social Media is more effective than traditional marketing?',3);

-- Add Options

INSERT INTO Option_s (Option_descr,Points) Values 

('Yes','5'),
('No','0');
 
INSERT INTO Answer (default_User_ID,default_Question_ID,default_Option_ID,dates) Values

-- UserName Brian Olsen
('1','1','2','2021-03-09'),
('1','2','1','2021-03-09'),
('1','3','2','2021-03-09'),
('1','4','1','2021-03-09'),
('1','5','2','2021-03-09'),
('1','6','1','2021-03-09'),
('1','7','1','2021-03-09'),
('1','8','1','2021-03-09'),
('1','9','2','2021-03-09'),
('1','10','2','2021-03-09'),
('1','11','1','2021-03-09'),
('1','12','2','2021-03-09'),
-- User Shantelle Lambert
('2','1','1','2021-03-09'),
('2','2','1','2021-03-09'),
('2','3','2','2021-03-09'),
('2','4','2','2021-03-09'),
('2','5','1','2021-03-09'),
('2','6','2','2021-03-09'),
('2','7','1','2021-03-09'),
('2','8','2','2021-03-09'),
('2','9','1','2021-03-09'),
('2','10','1','2021-03-09'),
('2','11','1','2021-03-09'),
('2','12','2','2021-03-09'),
 -- User Katie Hamilton
('3','1','1','2021-03-09'),
('3','2','1','2021-03-09'),
('3','3','2','2021-03-09'),
('3','4','1','2021-03-09'),
('3','5','2','2021-03-09'),
('3','6','2','2021-03-09'),
('3','7','1','2021-03-09'),
('3','8','2','2021-03-09'),
('3','9','1','2021-03-09'),
('3','10','2','2021-03-09'),
('3','11','2','2021-03-09'),
('3','12','1','2021-03-09'),
-- User Khia Pruitt
('4','1','1','2021-03-09'),
('4','2','1','2021-03-09'),
('4','3','2','2021-03-09'),
('4','4','1','2021-03-09'),
('4','5','2','2021-03-09'),
('4','6','1','2021-03-09'),
('4','7','2','2021-03-09'),
('4','8','1','2021-03-09'),
('4','9','2','2021-03-09'),
('4','10','2','2021-03-09'),
('4','11','2','2021-03-09'),
('4','12','1','2021-03-09'),
 -- User Glen Murray
('5','1','1','2021-03-09'),
('5','2','2','2021-03-09'),
('5','3','1','2021-03-09'),
('5','4','2','2021-03-09'),
('5','5','1','2021-03-09'),
('5','6','1','2021-03-09'),
('5','7','2','2021-03-09'),
('5','8','1','2021-03-09'),
('5','9','2','2021-03-09'),
('5','10','1','2021-03-09'),
('5','11','2','2021-03-09'),
('5','12','2','2021-03-09'),
 -- User Tomas Howell
('6','1','2','2021-03-09'),
('6','2','1','2021-03-09'),
('6','3','1','2021-03-09'),
('6','4','1','2021-03-09'),
('6','5','2','2021-03-09'),
('6','6','1','2021-03-09'),
('6','7','2','2021-03-09'),
('6','8','2','2021-03-09'),
('6','9','2','2021-03-09'),
('6','10','2','2021-03-09'),
('6','11','2','2021-03-09'),
('6','12','2','2021-03-09'),
-- User Gurli Pattersen 
('7','1','2','2021-03-09'),
('7','2','1','2021-03-09'),
('7','3','2','2021-03-09'),
('7','4','2','2021-03-09'),
('7','5','1','2021-03-09'),
('7','6','1','2021-03-09'),
('7','7','1','2021-03-09'),
('7','8','2','2021-03-09'),
('7','9','2','2021-03-09'),
('7','10','1','2021-03-09'),
('7','11','1','2021-03-09'),
('7','12','2','2021-03-09')
;

SELECT * from Users;
SELECT * from Category;
select * from Question;
SELECT * from Option_s;
SELECT * from Answer;

