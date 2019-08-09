--1
create table Login_Account
( UserLoginID varchar2(50) NOT NULL,
AccountID varchar2(50) NOT NULL,
CONSTRAINT user_pri_k PRIMARY KEY(UserLoginID));
commit;
--2
create table User_Logins
( UserLoginID varchar2(50) NOT NULL,
UserPassword varchar2(50) NOT NULL,
CONSTRAINT user_usrlogins PRIMARY KEY(UserLoginID));
commit;
--3
create table User_SecurityAnswers(UserLoginID varchar2(50) NOT NULL,
usersecurityanser varchar2(100) NOT NULL,
usersecurityquestionID varchar2(20) NOT NULL,
CONSTRAINT user_securityans PRIMARY KEY(UserLoginID));
commit;
--4
create table User_SecurityQuestions(
usersecurityquestionID varchar2(20) NOT NULL,
usersecurityquestion varchar2(100) NOT NULL);
commit;
--5
create table customerAccount(
AccountID varchar2(50) NOT NULL,
customerID varchar2(50) NOT NULL,
CONSTRAINT customeracc_pri_accID PRIMARY KEY(AccountID));
commit;
--6
create table account(
AccountID varchar2(50) NOT NULL,
currentBalance varchar2(50) NOT NULL,
AccountTypeID varchar2(50) NOT NULL,
AccountStatusTypeID varchar2(50) NOT NULL,
InterestSavingsRateID  varchar2(50) NOT NULL,
PRIMARY KEY (AccountID,AccountTypeID,AccountStatusTypeID));
commit;