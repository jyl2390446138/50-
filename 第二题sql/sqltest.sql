SELECT `name` ���� ,CONCAT(LEFT(mobile_phone,3), '********' ) �ֻ��� FROM stuff;

SELECT COUNT(1)  ����,dept_name ���� FROM stuff GROUP BY dept_id;

SELECT MAX(age),`name` ����,dept_id , dept_name ���� FROM stuff GROUP BY dept_id ;

SELECT * FROM stuff WHERE mobile_phone LIKE '%302%';