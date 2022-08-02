-- 逻辑运算符：OR||  AND&&  NOT！ XOR

-- OR  AND
-- OR可以和AND一起使用，但是AND的优先级高于OR，先对AND两边的操作数进行操作，再对OR
SELECT last_name,salary,department_id
FROM employees
-- WHERE department_id = 10 OR department_id = 20;
WHERE department_id = 50 AND salary > 6000;

-- NOT
SELECT last_name,salary,department_id
FROM employees
-- WHERE salary NOT BETWEEN 6000 AND 8000;
WHERE NOT commission_pct <=> NULL;


--XOR异或
SELECT last_name,salary,department_id
FROM employees
WHERE department_id = 50 XOR salary > 6000;