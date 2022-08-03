-- 1.多表查询的连接条件
SELECT employee_id,department_name
FROM employees,departments
-- 两个表的连接条件
WHERE employees.department_id = departments.department_id;



-- 2.如果查询语句中出现了多个表中都存在的字段，则必须指明此字段所在的表
SELECT employees.employee_id,departments.department_name,employees.department_id
FROM employees,departments
WHERE employees.department_id = departments.department_id;

-- 建议：从sql优化的角度，建议多表查询时，每个字段前都指明其所在的表。


-- 3.可以给表起别名，在SELECT和WHERE中使用表的别名
SELECT emp.employee_id,dept.department_name,emp.department_id
FROM employees emp,departments dept
WHERE emp.department_id = dept.department_id;

-- 如果起了别名，在SELECT和WHERE中必须使用别名，而不能使用原名



-- 4.结论：如果有n个表实现多表查询，则需要至少n-1个连接条件
-- 练习：查询员工的employee_id,last_name,department_name,city
SELECT e.employee_id,e.last_name,d.department_name,l.city
FROM employees e,departments d,locations l
WHERE e.department_id = d.department_id
AND d.location_id = l.location_id;
