# 找出薪水在公司的平均薪水之上的人员名字
# 输出标准中包含Employee中所有字段和该employee所在公司名称以及该公司平均薪资：
# id | name | age | gender | companyId | salary | companyName | avgsal
select e.*, c.companyName, c.avgsal from employee as e, (select a.companyId, b.companyName, AVG(a.salary) as avgsal from employee as a, company as b where a.companyId=b.id group by a.companyId) as c WHERE (e.companyId=c.companyId AND e.salary>c.avgsal);
