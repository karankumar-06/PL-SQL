--program to print some of inputted digit
set serveroutput on
declare
i number:=1;
n number:=&n;
s number:=0;
begin
loop
exit when i > n ;
s:=s + i;
i:=i + 1;
end loop;
dbms_output.put_line('sum of digit='||s);
end;
/