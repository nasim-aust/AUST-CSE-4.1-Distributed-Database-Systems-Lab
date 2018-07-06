/*
	Name: MD Abdullah Nasim
	ID : 15.01.04.085
	Group : B2
*/

/*
	A. Prints the last student ID stored in student table
	B. And insert 10 more tuples in the student table, where IDs will be incremented by 1 starting from the last ID stored
	(from part-A). Others fields will be just repeated.
*/

SET SERVEROUTPUT ON

	DECLARE

		SID Student.snum%TYPE;
		SName student.sname%TYPE;
		SMajor student.major%TYPE;
		SLevel student.slevel%TYPE;
		SAge student.age%TYPE;
		SCounter NUMBER(6) := 1;
	
	CURSOR SCursor IS SELECT snum,sname,major,slevel,age FROM Student; 
    
	BEGIN

		OPEN SCursor;
	
	--Task A:
	
		LOOP
			FETCH SCursor INTO SID,SName,SMajor,SLevel,SAge;
			EXIT WHEN SCursor%NOTFOUND;		
		END LOOP;
    
		DBMS_OUTPUT.PUT_LINE('Last Student ID: '|| (SID));
    	
	--Task B: 
	
    	LOOP
			SID := SID+1;
			INSERT INTO Student VALUES(SID,SName,SMajor,SLevel,SAge);
			SCounter := SCounter+1;
			EXIT WHEN SCounter>10;
		END LOOP;
		
		CLOSE SCursor;
		COMMIT;
		
	END;
	/   
