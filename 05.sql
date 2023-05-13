--Visualize number, apell, and dept from a all employees in a range of wages specified by keyboard using fetch
--also expect no results and print a warning

accept iMin prompt 'min'
accept iMax prompt 'max'

declare

  eNoData exception;
  
  cursor cRes is
    select numemp, apell, depnume, salario from empleado 
    where salario between &iMin and &iMax;
    
    vNumemp EMPLEADO.NUMEMP%type;
    vApell EMPLEADO.APELL%type;
    vDepnume EMPLEADO.DEPNUME%type;
    vSalario EMPLEADO.SALARIO%type;
    
begin

  open cRes;
  
  loop 
    fetch cRes into vNumemp, vApell, vDepnume, vSalario;
      exit when cRes%notfound;
      dbms_output.put_line(vNumemp ||' '|| vApell ||' '|| vDepnume||' '||vSalario);
  end loop;
  if cRes%rowcount = 0 then
    raise eNoData;
  end if;
  close cRes;
  
EXCEPTION

  when eNoData then
    dbms_output.put_line('No such data');

end;
/


