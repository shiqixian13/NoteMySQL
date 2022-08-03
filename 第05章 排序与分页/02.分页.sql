-- 2.1 MySQL使用LIMIT实现数据的分页显示

-- 需求：每页显示20条记录，此时显示第1页
SELECT employee_id,last_name
FROM employees
LIMIT 0,20;

-- 需求：每页显示20条记录，此时显示第2页
SELECT employee_id,last_name
FROM employees
LIMIT 20,20;

-- 需求：每页显示20条记录，此时显示第3页
SELECT employee_id,last_name
FROM employees
LIMIT 40,20;

-- 需求：每页显示pageSize条记录，此时显示第pageNo页：
-- 公式：LIMIT（pageNo-） * pageSize，pageSize；





-- 2.2 WHERE ... ORDER BY ... LIMIT 声明顺序如下：

-- LIMIT的格式：严格来说，LIMIT 位置偏移量，条目数
-- 结构"LIMIT 0，条目数" 等价于"LIMIT 条目数"

SELECT employee_id,last_name,salary
FROM employees
WHERE salary > 6000
ORDER BY salary DESC
-- LIMIT 1,10
LIMIT 10;

-- 练习：表中有107条数据，我们只想要显示第32，33条
SELECT employee_id,last_name,
FROM employees
LIMIT 31,2;






-- 2.3 MySQL8.0新特性：LIMIT ... OFFSET ... 

-- 练习：表中有107条数据，我们只想要显示第32，33条
SELECT employee_id,last_name,
FROM employees
LIMIT 2 OFFSET 31;

-- 练习：查询员工表中工资最高的员工信息
SELECT employee_id,last_name,salary
FROM employees
ORDER BY salary DESC
LIMIT 0,1;




-- 2.4 LIMIT 可以使用在MySQL、PGSQL、MariaDB、SQLite 等数据库中，表示分页
-- 不能使用在SQL Server、DB2、Qracle！