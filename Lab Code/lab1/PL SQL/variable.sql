SET SERVEROUTPUT ON;

DECLARE
	n_id number;
	v_name varchar2(20);

BEGIN
	select id, name
	into n_id, v_name
	from student
	where id = 3;

DBMS_OUTPUT.PUT_LINE(n_id);
DBMS_OUTPUT.PUT_LINE(v_name);

END;
/

SET SERVEROUTPUT ON;

DECLARE
	n_id student.id %TYPE;
	v_name student.name %TYPE;

BEGIN
	select id, name
	into n_id, v_name
	from student
	where id = 3;

DBMS_OUTPUT.PUT_LINE(n_id);
DBMS_OUTPUT.PUT_LINE(v_name);

END;
/