-- 如果没有使用排序操作，默认情况下按照添加数据的顺序显示
SELECT * FROM employees;


-- 1.使用 ORDER BY 对查询到的数据进行排序操作
-- 升序：ASC（ascend）
-- 降序：DESC（descend）

-- 练习：按照salary从高到低的顺序排序
SELECT employee_id,laset_name,salary
FROM employees
ORDER BY salary DESC;

-- 练习：按照salary从低到高的顺序排序
SELECT employee_id,laset_name,salary
FROM employees
ORDER BY salary ASC;

SELECT employee_id,laset_name,salary
FROM employees
ORDER BY salary;-- 没有指明排序方式，则默认升序


-- 2.我们可以使用列的别名进行排序
SELECT employee_id,salary,salary * 12 annual_sal
FROM employees
ORDER BY annual_sal;

-- 列的别名只能在 ORDER BY 中使用，不能在 WHERE 中使用
-- 如下操作报错！！！
SELECT employee_id,salary,salary * 12 annual_sal
FROM employees
WHERE annual_sal > 1800;



-- 3.强调格式：WHERE 需要声明在 FROM 后，ORDER BY 前
SELECT employee_id,salary
FROM employees
WHERE department_id IN (50,60,70)
ORDER BY department_id DESC;




-- 4.二级排序
-- 练习：显示员工信息，按照department_id的降序排列，salary的升序排列
SELECT employee_id,salary,department_id
FROM employees
ORDER BY department_id DESC,salary ASC;