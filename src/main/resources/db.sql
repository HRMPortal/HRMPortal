DROP TABLE IF EXISTS EMPLOYEE_INFO;
CREATE TABLE EMPLOYEE_INFO (
	EMPLOYEE_NAME VARCHAR(100) NOT NULL,
	ROLE_ID INT NOT NULL,
	DATE_OF_BIRTH DATE NOT NULL,
	DATE_OF_JOINING DATE NOT NULL,
	PHONE_NO LONG NOT NULL,
	EMAIL_ID VARCHAR(100) NOT NULL,
	ALTERNATE_EMAIL_ID VARCHAR(100) NOT NULL,
	ADDRESS VARCHAR(200) NOT NULL,
	EMPLOYEE_ID VARCHAR(10) NOT NULL,
	NO_OF_LEAVES INT NOT NULL,
	PRIMARY KEY (EMPLOYEE_ID)
);

DROP TABLE IF EXISTS EMPLOYEE_LOGIN;
CREATE TABLE EMPLOYEE_LOGIN (
	PASSWORD_HASH VARCHAR(200) NOT NULL,
	EMPLOYEE_ID VARCHAR(10) NOT NULL,
	PRIMARY KEY (EMPLOYEE_ID)
);
/* Password is admin */
INSERT INTO EMPLOYEE_LOGIN (PASSWORD_HASH, EMPLOYEE_ID) VALUES ('d033e22ae348aeb5660fc2140aec35850c4da997', 'admin');

DROP TABLE IF EXISTS EMPLOYEE_ROLES;
CREATE TABLE EMPLOYEE_ROLES (
	ID INT NOT NULL AUTO_INCREMENT,
	ROLE_ID INT NOT NULL,
	ROLE_NAME VARCHAR(100) NOT NULL,
	PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS EMPLOYEE_LEAVE_INFO;
CREATE TABLE EMPLOYEE_LEAVE_INFO (
	ID INT NOT NULL AUTO_INCREMENT,
	EMPLOYEE_ID VARCHAR(10) NOT NULL,
	START_DATE DATE,
	END_DATE DATE,
	STATUS VARCHAR(10),
	PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS EMPLOYEE_CTC;
CREATE TABLE EMPLOYEE_CTC (
	ID INT NOT NULL AUTO_INCREMENT,
	EMPLOYEE_ID VARCHAR(10) NOT NULL,
	CTC_YEAR INT NOT NULL,
	CTC LONGBLOB NOT NULL,
	PRIMARY KEY (ID, EMPLOYEE_ID, CTC_YEAR)
);

DROP TABLE IF EXISTS EMPLOYEE_SALARY_SLIP;
CREATE TABLE EMPLOYEE_SALARY_SLIP (
	ID INT NOT NULL AUTO_INCREMENT,
	EMPLOYEE_ID VARCHAR(10) NOT NULL,
	MONTH_YEAR DATETIME NOT NULL,
	SALARY_SLIP LONGBLOB NOT NULL,
	PRIMARY KEY (ID, EMPLOYEE_ID, MONTH_YEAR)
);

DROP TABLE IF EXISTS LOGS;
CREATE TABLE LOGS (
	ID INT NOT NULL AUTO_INCREMENT,
	EMPLOYEE_ID VARCHAR(10),
	LOG_TIME DATETIME NOT NULL,
	LOG_LEVEL VARCHAR(10) NOT NULL,
	LOG_MESSAGE VARCHAR(1000) NOT NULL,
	CLASS_NAME VARCHAR(100) NOT NULL,
	PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS CONFIG_PROPERTY;
CREATE TABLE CONFIG_PROPERTY (
	PROPERTY_NAME VARCHAR(255) NOT NULL,
	PROPERTY_VALUE VARCHAR(255) NOT NULL,
	PRIMARY KEY (PROPERTY_NAME)
);
INSERT INTO CONFIG_PROPERTY (PROPERTY_NAME, PROPERTY_VALUE) VALUES ('DEFAULT_USER_PASSWORD', 'hrmportal');