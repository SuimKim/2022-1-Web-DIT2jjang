USE kimsuim;

CREATE TABLE USER(
	ID VARCHAR(20) PRIMARY KEY,
	PWD VARCHAR(50),
	NAME VARCHAR(50),
	GENDER CHAR(5),
	LAN VARCHAR(100),
	HOB VARCHAR(100) );
	
CREATE TABLE POST(
	POSTNO INT PRIMARY KEY,
	TITLE VARCHAR(100),
	CONTENTS VARCHAR(500) );
	
