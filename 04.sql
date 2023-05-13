--Visualize number, apell, and dept from a certain dept specified by keyboard using a cursor

accept iDep prompt 'Emp'

declare
  
  cursor cRes is
    select numemp, apell, depnume from empleado where depnume = &iDep;
    
begin

  for e in cRes 
  loop 
    dbms_output.put_line(e.numemp ||' '|| e.apell ||' '|| e.depnume);
  end loop;

end;
/