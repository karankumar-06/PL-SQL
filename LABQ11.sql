
--program to calculate area of circle
set serveroutput on
declare
r number:=&r;
PI constant Number(5,2):=3.14;
area number;
begin
area:=PI * r * r ;
dbms_output.put_line('area of circle='||area);
end;
/