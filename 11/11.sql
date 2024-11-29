create table employee1(emp_id int primary key,emp_name varchar(20),salary int,mobile_no int,dept char(8));

insert into employee1 values(101,'Alice',50000,12345678,'HR'),(102,'Bob',60000,23456789,'Finance'),(103,'Charlie',55000,34567890,'IT'),(104,'David',62000,45678901,'Sales'),(105,'Eve',48000,56789012,'Support'),(106,'Happy',50000,67890123,'Finance');

delimiter //

create trigger b_up
before update on employee1
for each row
begin
if old.salary>50000 then
set new.salary=old.salary+500;
end if;
end //

delimiter ;

update employee1 set emp_name = 'David' where emp_id=104;

select * from employee1;
