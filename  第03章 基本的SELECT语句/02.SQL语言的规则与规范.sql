/*
2.1 基本规则
    ·SQL可以写在一行或者多行。为了提高可读性，各子句分行写，必要时使用缩进
    ·每条命令以;或者\g或者\G结束（\g或者\G在小黑窗中使用）
    ·关键字不能被缩写也不能分行
    ·关于标点符号
        1.必须保证所有的（）、单引号、双引号是成对结束的
        2.必须使用英文状态下的半角输入法
        3.字符串型和日期时间类型的数据可以使用单引号('')表示
        4.列的别名，尽量使用("")，而且不建议省略as
    

2.2 SQL大小写规范（建议遵守）
    ·MySQL在Windows环境下是大小写不敏感的
    ·MySQL在Linux环境下是大小写敏感的
        ·数据库名、表名、表的别名、变量名是严格区分大小写的
        ·关键字、函数名、列名（或字段名）、列的别名（字段的别名）是忽略大小写的
    ·推荐采用统一的书写规范：
        ·数据库名、表名、表别名、字段名、字段别名等都小写
        ·SQL关键字、函数名、绑定变量等都大写


2.3 注释
    可以使用如下格式的注释结构：
        单行注释：#注释文字（MySQL特有的方式）
        单行注释：-- 注释文字（--后面必须包含一个空格）
        多行注释：/* 注释文字 */


*/
/*
2.4 命名规则
    ·数据库、表名不得超过30个字符，变量名限制为29个
    ·必须只能包含A~Z，a~z，0~9，_共63个字符
    ·数据库名、表名、字段名等对线名中间不要有空格
    ·同一个MySQL软件中，数据库不能同名；同一个库中，表不能同名；同一个表中，字段不能同名
    ·必须保证你的字段没有和保留字、数据库系统或常用方法冲突。如果坚持使用，请在SQL语句中使用``（着重号）引起来
    ·保持字段名和类型的一致性，在命名字段并为其指定数据类型的时候一定要保证一致性。假如数据类型在一个表里是整数，那在另一个表里可就别变成字符型了


2.5 导入现有的数据表、表的数据
    方式一：source 文件的全路径名
    举例：source d:\atguigudb.sql;

    方式二：基于具体的图形化界面的工具可以导入数据


*/