--MD Abdullah Al Nasim
--15.01.04.085
--B2

-- #1
	CREATE OR REPLACE
	FUNCTION CountStudent(stuID student.snum%TYPE)
	RETURN NUMBER IS
	counter NUMBER :=0;
BEGIN
	SELECT COUNT(snum) INTO counter
	FROM student  
	WHERE age = (SELECT age
	FROM student
	WHERE snum = stuID);
	RETURN counter;	
END CountStudent;
/

-- #2

DROP TABLE age_info;
CREATE TABLE age_info(trackid INT, snum INT, same_age NUMBER);

CREATE OR REPLACE PROCEDURE ageInfoProc(studentTrackID IN INTEGER)
	IS
	i INTEGER := studentTrackID;
	stuID student.snum%TYPE;
	sameAgeStu NUMBER;
	
	CURSOR cur IS
	SELECT snum,CountStudent(snum) FROM student;

BEGIN
	OPEN cur;
	LOOP
		FETCH cur INTO stuID,sameAgeStu;
		EXIT WHEN cur%NOTFOUND;
		i := i + 1;
		INSERT INTO age_info VALUES(i,stuID,sameAgeStu);
	END LOOP;
	CLOSE cur;
END ageInfoProc;
/

-- #3

SET SERVEROUTPUT ON;
BEGIN
	ageInfoProc(1000);
	
END;
/