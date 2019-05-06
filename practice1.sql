# 1.创建数据库employee_db
create database employee_db;
use employee_db;
# 2.在数据库employee_db中创建table：`Employee`
create table Employee (id int unsigned, name varchar(30), age int unsigned, gender varchar(10), companyId int unsigned, salary int unsigned);
# 3.将`employee-data.csv`文件中的数据导入数据表Employee中
load data local infile 'employee-data.csv' into table employee fields terminated by ',' lines terminated by '\r\n';
delete from employee where name is null;
# 4.在数据库employee_db中创建table：`Company`
create table company (id int unsigned, companyName varchar(20), employeesNumber int unsigned);
# 5.将`company-data.csv`文件中的数据导入Company数据表中
load data local infile 'company-data.csv' into table company fields terminated by ',' lines terminated by '\r\n';
# 6.找出Employee表中姓名包含`n`字符并且薪资大于6000的雇员所有个人信息
select * from employee where (name Like '%n%' and salary>6000);
# ps:本练习中只需要将6的结果复制到`result.txt`文件中