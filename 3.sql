select * from Employee1;
create temporary table manager(IdManager int, SalaryManager int);
insert into manager 
select Id, Salary from  Employee1 where ManagerId is null;
select Name as Name from Employee1, manager where Employee1.ManagerId = manager.IdManager 
and Employee1.Salary > manager.SalaryManager;
