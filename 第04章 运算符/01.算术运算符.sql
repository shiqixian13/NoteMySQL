-- 1. 算数运算符：+  -  *  /(div)  %(mod)
SELECT 100, 100 + 0, 100 - 0, 100 + 50 * 3, 100 + 35.5, 100 - 35.5
FROM DUAL;

-- 在SQL中，+没有连接的作用，就表示加法运算。此时，会将字符串转换位数值（隐式转换）
SELECT 100 + '1' -- 结果为101。Java中结果为1001。
FROM DUAL;

SELECT 100 + 'a' -- 结果为100,此时‘a’看作0
FROM DUAL;

SELECT 100 + NULL -- 结果为null,null参与运算结果为null
FROM DUAL;

SELECT 100, 100 * 1, 100 * 1.0, 100 / 1.0, 100 / 2,
100 + 2 * 5 / 2, 100 / 3, 100 DIV 0
FROM DUAL;

-- 取模运算： % mod(结果正负值只与被模数有关)
SELECT 12 % 3, 12 % 5, 12 % -5, -12 % 5, -12 % -5
FROM DUAL;

-- 练习：查询员工id为偶数的员工信息
SELECT employee_id,last_name,salary
FROM employees
WHERE employee_id % 2 = 0;