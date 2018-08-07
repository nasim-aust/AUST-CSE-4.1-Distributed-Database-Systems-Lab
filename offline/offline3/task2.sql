set serveroutput on;
declare
s_snum student.snum%type;
s_sname student.sname%type;
cursor s_info is select student.snum ,student.sname from student inner join enrolled on student.snum=enrolled.snum where
enrolled.cnum=8;

begin
open s_info;
loop
fetch s_info into s_snum ,s_sname;
dbms_output.put_line(TO_CHAR(s_snum) ||'  '||TO_CHAR(s_sname));

exit when s_info%notfound;
end loop;


close s_info;

end;
/