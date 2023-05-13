--insert into a table values that are divisible by 3 from 11 to 30

begin

  for vN in 11..30
  loop
    if mod(vn, 3) = 0 then
      insert into tablanume values (vn);
    end if;
    end loop;

end;
/