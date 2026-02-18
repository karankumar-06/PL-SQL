--Program to demonstrate the use of simple loop (Loop)

--program to print 1 to 5
set serveroutput on
declare
i number:=1;
begin
loop
dbms_output.put_line(i);
i:=i+1;
exit when i > 5 ;
end loop;
end;
/