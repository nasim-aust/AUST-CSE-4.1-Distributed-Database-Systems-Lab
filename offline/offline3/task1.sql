set serveroutput on;
declare
s_snum student.snum%type;
s_sname student.sname%type;
cursor s_info is select snum ,sname from student;

begin
open s_info;
loop
fetch s_info into s_snum ,s_sname;

if(s_snum>=20 and s_snum MOD 2=0)

 then 
 insert into enrolled values(s_snum,8);
end if;



exit when s_info%notfound;
end loop;


close s_info;

end;
/
