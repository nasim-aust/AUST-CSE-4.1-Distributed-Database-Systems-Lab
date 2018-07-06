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
