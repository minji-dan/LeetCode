select b.name as branch_name, a.id as employee_id, a.name as employee_name
from (select *
    from employees
    where salary < 250) a, branches b
where a.branch_id=b.id
order by a.id
