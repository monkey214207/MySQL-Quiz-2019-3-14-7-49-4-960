#取得平均薪水最高的公司
#输出公司名称和平均薪水：companyName avgSalary
select companyName, MAX(avgSalary) as avgSalary from (select a.companyName, AVG(b.salary) as avgSalary from company a, employee b where b.companyId=a.id group by b.companyId) temp;


