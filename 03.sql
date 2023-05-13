--increase wage by $1 of a certain dept and show number of rows affected and if no rows were affected, warn the user

accept iEmp prompt 'Emp'

declare

  vAf number(8);
  vDep number(8) := &iEmp;

begin

  select count(*) into vAf from EMPLEADO where depnume = vDep;
  
  if vAf = 0 then
    DBMS_OUTPUT.PUT_LINE('No such data');
  else
    update empleado set salario = salario + 1 where depnume = vDep;
    DBMS_OUTPUT.PUT_LINE(vAf || ' data affected');
  end if;

end;
/
