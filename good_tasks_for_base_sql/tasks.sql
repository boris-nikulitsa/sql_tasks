-- [Luxoft] EMPLOYEE1 : Select employees with greater salary per deparatment | Makes sense to search for other decisions
select emp.* from employee1 emp inner join 
 (select max(sal) max_sal, dep from employee1 group by dep) dep_stats
 on emp.sal = dep_stats.max_sal and emp.dep = dep_stats.dep;

-- [Luxoft] EMPLOYEE2/3 : Select employees with second greater salary | Makes sense to think about what's more optimal
select * from employee2 where sal in (select max(sal) from employee2 where sal not in (select max(sal) from employee2));
select * from employee3 where sal in (select max(sal) from employee3 where sal not in (select max(sal) from employee3));
-- decision with EXIST construction
select * from employee2 where sal in (select max(e1.sal) from employee2 e1 where exists (select e2.* from employee2 e2 where e2.sal > e1.sal));
select * from employee3 where sal in (select max(e1.sal) from employee3 e1 where exists (select e2.* from employee3 e2 where e2.sal > e1.sal));
-- decision with ROWNUM construction
select * from employee2 where sal in (select sal from (select distinct sal from employee2 order by sal desc) where rownum < 3) and sal not in (select max(sal) from employee2);
select * from employee3 where sal in (select sal from (select distinct sal from employee3 order by sal desc) where rownum < 3) and sal not in (select max(sal) from employee3);

-- [Yandex Money] TEAM : Select teams to build tournament table | Makes sense to think about it more
select t1.name, t2.name from TEAM t1, TEAM t2 where t1.id < t2.id;

-- [Luxoft] City : remove duplicate rows | Makes sense to google and find more optimal decision
delete from city c1 where exists (select * from city c2 where c1.name = c2.name and c1.country = c2.country and c1.rowid < c2.rowid);
delete from city where rowid not in (select min(rowid) from city group by name, country);



