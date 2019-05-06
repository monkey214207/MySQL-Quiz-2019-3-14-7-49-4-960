# 取得每个company中最高薪水的人员名字
# 输出结果包含公司名称和人员名称：companyName name
select a.companyName, b.name, MAX(b.salary) from company a, employee b where b.companyId=a.id group by b.companyId;