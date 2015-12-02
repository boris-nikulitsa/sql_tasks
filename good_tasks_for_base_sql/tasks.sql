-- EMPLOYEE1 : Select employees with greater salary per deparatment
select emp.* from employee1 emp inner join 
(select max(sal) max_sal, dep from employee1 group by dep) dep_stats
on emp.sal = dep_stats.max_sal and emp.dep = dep_stats.dep;

-- EMPLOYEE2/3 : Select employees with second greater salary
select * from employee2 where sal in (select max(sal) from employee2 where sal not in (select max(sal) from employee2));
select * from employee3 where sal in (select max(sal) from employee3 where sal not in (select max(sal) from employee3));
