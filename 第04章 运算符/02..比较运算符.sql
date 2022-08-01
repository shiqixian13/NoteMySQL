-- 2.1 = <=> <>(!=) < <= > >=

-- =的使用
SELECT 1 = 2, 1 != 2, 1 = '1', 1 = 'a', 0 = 'a' -- 字符串存在隐式转换，转换不成功则看为0
FROM DUAL;

SELECT 'a' = 'a', 'ab' = 'ab', 'a' = 'b' -- 两边都是字符串，则按照ANSI的比较规则进行比较
FROM DUAL;

SELECT 1 = NULL, NULL = NULL -- 只要有null参与，结果就为null
FROM DUAL;

SELECT last_name,salary,commission_pct
FROM employees
-- WHERE salary = 6000;
WHERE commission_pct = NULL; -- 此时执行，不会有任何结果




-- <=>的使用
-- 安全等于运算符（<=>）与等于运算符（=）的作用相似，唯一区别是<=>可以用来对null进行判断。
-- 在两个操作数都为NULL时，返回值为1，而不为NULL；当一个操作数为NULL时，返回值为0，而不为NULL。
SELECT 1 <=> NULL, NULL <=> NULL -- 只要有null参与，结果就为null
FROM DUAL;

-- 查询表中commission_pct为NULL的有哪些
SELECT last_name,salary,commission_pct
FROM employees
-- WHERE salary = 6000;
WHERE commission_pct <=> NULL; 





-- 2.2
-- ① IS NULL \ IS NOT NULL \ ISNULL
-- 练习：查询表中commission_pct为NULL的有哪些
SELECT last_name,salary,commission_pct
FROM employees
WHERE commission_pct IS NULL;
-- 或
SELECT last_name,salary,commission_pct
FROM employees
WHERE ISNULL(commission_pct);

-- 练习：查询表中commission_pct不为NULL的有哪些
SELECT last_name,salary,commission_pct
FROM employees
WHERE commission_pct IS NOT NULL;
-- 或
SELECT last_name,salary,commission_pct
FROM employees
WHERE NOT commission_pct <=> NULL;


-- ② LEAST() \ GREATEST()
SELECT LEAST('g','b','t','k'),GREATEST('g','b','t','k')
FROM DUAL;

SELECT LEAST(first_name,last_name),GREATEST(first_name,last_name)
FROM employees;


-- ③ BETWEEN 条件上界1 AND 条件下界2 （查询条件1和条件2范围内的数据，包含边界）
-- 查询工资在6000到8000的员工信息
SELECT employee_id,last_name,salary
FROM employees
WHERE salary BETWEEN 6000 AND 8000;
-- 等同于 WHERE salary >= 6000 && salary <= 8000;
-- 交换6000与8000位置后查询不到数据

-- 查询工资不在6000到8000的员工信息
SELECT employee_id,last_name,salary
FROM employees
WHERE NOT salary BETWEEN 6000 AND 8000;
-- 等同于 WHERE salary < 6000 OR salary > 8000;





-- ④ IN(set) \ NOT IN(set)
-- 练习：查询部门为10，20，30部门的员工信息
SELECT last_name,salary,department_id
FROM employees
WHERE department_id IN (10,20,30);

-- 练习：查询部门不在10，20，30部门的员工信息
SELECT last_name,salary,department_id
FROM employees
WHERE department_id NOT IN (10,20,30);




-- ⑤ LIKE：模糊查询
-- % ：代表不确定个数的字符（0个，1个，或多个）

-- 练习：查询last_name中包含字符'a'的员工信息
SELECT last_name,
FROM employees
WHERE last_name LIKE '%a%';

-- 练习：查询last_name中以字符'a'开头的员工信息
SELECT last_name,
FROM employees
WHERE last_name LIKE 'a%';

-- 练习：查询last_name中包含字符'a'且包含'e'的员工信息
SELECT last_name,
FROM employees
WHERE last_name LIKE '%a%' AND last_name LIKE '%e%';
-- 或
SELECT last_name,
FROM employees
WHERE last_name LIKE '%a%e%' OR last_name LIKE '%e%a%';

-- _ ：代表一个不确定的字符
-- 查询第二个字符是'a'的员工信息
SELECT last_name
FROM employees
WHERE last_name LIKE '_a%';

-- 查询第二个字符是'_'第三个字符是'a'的员工信息
-- 需要使用转义字符：\
SELECT last_name
FROM employees
WHERE last_name LIKE '_\_a%';




-- ⑥ REGEXP \ RLIKE ：正则表达式
-- REGEXP运算符在进行匹配时，常用的有下面几种通配符：
-- （1）'^'匹配以该字符后面的字符开头的字符串
-- （2）'$'匹配以该字符前面的字符开头的字符串
-- （3）'.'匹配任何一个单字符
-- （4）"[...]"匹配在方括号内的任何字符。例如"[abc]"匹配"a"或"b"或"c"。
--      为了命名字符的规范，使用一个'-'。"[a-z]"匹配任何字母，而"[0-9]"匹配任何数字。
-- （5）'*'匹配零个或者多个在他前面的字符。例如，"x*"匹配任何数量的'x'字符。
--      "[0-9]*"匹配任何数量的数字，而"*"匹配任何数量的任何字符。
SELECT 'shkstart' REGEXP '^shk', 'shkstart' REGEXP 'rt$', 'shkstart' REGEXP 'hk'
FROM DUAL;

SELECT 'shkstart' REGEXP 'hk.tr', 'shkstart' REGEXP '[ab]'
FROM DUAL;