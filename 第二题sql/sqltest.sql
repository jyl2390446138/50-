SELECT `name` 姓名 ,CONCAT(LEFT(mobile_phone,3), '********' ) 手机号 FROM stuff;

SELECT COUNT(1)  人数,dept_name 部门 FROM stuff GROUP BY dept_id;

SELECT MAX(age),`name` 姓名,dept_id , dept_name 部门 FROM stuff GROUP BY dept_id ;

SELECT * FROM stuff WHERE mobile_phone LIKE '%302%';