-- 位运算符： & | ^ ~ >> <<
SELECT 12 & 5, 12 | 5, 12 ^ 5
FROM DUAL;

SELECT 10 & ~1
FROM DUAL;

-- 在一定范围内满足，每向左移一位，相当于乘2；向右移一位，相当于除以2
SELECT 4 << 1, 8 >> 1
FROM DUAL;