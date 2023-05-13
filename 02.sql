--modify salary based on how many subordinates a person inputed by keyboard has

accept iEmp prompt 'Emp'

declare

  vSub number(8);
  vEmp number(8) := &iEmp;

begin

  select count(*) into vSub from EMPLEADO where diremp = vEmp;

  update empleado set salario = case
    when vSub = 1 then salario + 80
    when vSub = 2 then salario + 100
    when vSub > 3 then salario + 110
    else salario + 50
    end;
    
  update empleado set salario = case
    when oficio = 'PRESIDENTE' then salario + 30
    else salario
    end;

end;
/
