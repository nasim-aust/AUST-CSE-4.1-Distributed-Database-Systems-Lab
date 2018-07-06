--MD Abdullah Al Nasim
--15.01.04.085
--B2
-- #2

DROP TABLE age_info;
CREATE TABLE age_info(trackid INT, snum INT, same_age NUMBER);

CREATE OR REPLACE
PROCEDURE ageInfoProc(studentTrackID IN INTEGER)
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