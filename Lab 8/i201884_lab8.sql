CREATE TABLE tblEmployee (
id INTEGER NOT NULL,
firstName VARCHAR(255) NOT NULL,
lastName VARCHAR(255) NOT NULL,
salary INTEGER NOT NULL,
departID INTEGER NULL,
MGR INTEGER NOT NULL
);
CREATE TABLE tblDepartment (
id INTEGER NOT NULL,
name VARCHAR(255) NOT NULL,
location VARCHAR(255) NOT NULL
);



INSERT into tblEmployee VALUES (

1, 'Sami', 'Ullah', 37000, 1, 3322

);

INSERT into tblEmployee VALUES (

2, 'Hamid', 'Khan', 38000, 2, 3312

);

INSERT into tblEmployee VALUES (

3, 'Aftab', 'Khan', 39000, 3, 3345

);

INSERT into tblEmployee VALUES (

4, 'Abhishek', 'Raj', 35000, NULL , 3377

);

INSERT into tblEmployee VALUES (

5, 'Abhishek', 'Yadav', 37000, 1 , 3348

);

INSERT into tblEmployee VALUES (

6, 'Raj', 'Verma', 47500, 3 , 3399

);

INSERT into tblEmployee VALUES (

7, 'Tony', 'Bell', 44000, 2 , 3378

);

INSERT into tblEmployee VALUES (

8, 'Rahul', 'Sharma', 27000, NULL, 4423

);

INSERT into tblEmployee VALUES (

9, 'Verhal', 'Mauya', 18500, 4, 5678

);

INSERT into tblEmployee VALUES (

10, 'Jyoti', 'Kakawat', 28000, 5,7654

);

INSERT into tblEmployee VALUES (

11, 'Vpin', 'Mehra', 30000, 2,2345

);

INSERT into tblEmployee VALUES (

12, 'Pradeep', 'Gupta', 70000, 1,1234

);

INSERT into tblEmployee VALUES (

13, 'Sumit', 'Jolly', 55000, 6,3246

);

INSERT into tblEmployee VALUES (

14, 'Jyoti', 'Mahra', 20000, NULL,9898

);

INSERT into tblEmployee VALUES (

15, 'Karan', 'Pratap', 25000, 2,8989

);

INSERT into tblEmployee VALUES (

16, 'Aleem', 'Shaikh', 35000, 1,6696

);

INSERT into tblEmployee VALUES (

17, 'Kavita', 'Thakur', 30000, 4,9696

);

INSERT into tblEmployee VALUES (

18, 'Sufiyan', 'Mukadam', 40000, 6,1024

);

INSERT into tblEmployee VALUES (

19, 'Ashish', 'Mehra', 37000, NULL, 1025

);

INSERT into tblEmployee VALUES (

20, 'Mehul', 'Joshi', 65000, NULL, 1026

);

INSERT into tblEmployee VALUES (

21, 'Payal', 'Yadev', 15000, 5 , 1027

);

INSERT into tblEmployee VALUES (

22, 'Swapni', 'Pati', 36000, 5, 1008

);

INSERT into tblEmployee VALUES (

23, 'Richa', 'Patel', 35000, NULL, 1001

);

INSERT into tblEmployee VALUES (

24, 'Mahesh', 'Singh', 33000, 5, 1001

);

INSERT into tblEmployee VALUES (

25, 'Kaleem', 'Khan', 8000, 4, 1223

);

INSERT into tblEmployee VALUES (

26, 'Heena', 'Shaikh', 14000, NULL,9127

);

INSERT into tblEmployee VALUES (

27, 'Rahul', 'Kotian', 26000, 3, 8181

);

INSERT into tblEmployee VALUES (

28, 'Naveen', 'Kapoor', 37000, NULL,7171

);

INSERT into tblEmployee VALUES (

29, 'Sanjay', 'Sarwat', 65000, 3,7473

);



INSERT into tblDepartment VALUES (
1, 'SQL', 'Mumbai'
);
INSERT into tblDepartment VALUES (
2, 'Finance', 'Pune'
);
INSERT into tblDepartment VALUES (
3, 'SDM', 'Thane'
);
INSERT into tblDepartment VALUES (
4, 'MySQL', 'Chennai'
);
INSERT into tblDepartment VALUES (
5, 'DB2', 'Kolkata'
);
INSERT into tblDepartment VALUES (
6, 'Oracle', 'Dehli'
);
INSERT into tblDepartment VALUES (
7, 'Marketing', 'Dehli'
);
INSERT into tblDepartment VALUES (
8, 'Networking', 'Mumbai'
);
INSERT into tblDepartment VALUES (
9, 'HR', 'Mumbai'
);


SELECT tblEmployee.id,
tblEmployee.firstName,
tblEmployee.lastName,
tblEmployee.salary,
tblDepartment.name,
tblDepartment.location
FROM tblEmployee
FULL JOIN tblDepartment
ON tblEmployee.departID = tblDepartment.id;

SELECT *from tblEmployee CROSS
JOIN tblDepartment;


select * from tblEmployee
select *from tblDepartment

--TASK 1
select tblEmployee.id, concat(firstName, lastName) as FullName, salary, tblDepartment.name,location
from tblEmployee inner join tblDepartment
on tblEmployee.id = tblDepartment.id;

select count(*) as Total_Emp from tblEmployee
where departid = 4


----TASK 2
select count(*) as Total_Emp, tblDepartment.name, departID
from tblEmployee inner join tblDepartment
on tblEmployee.departID=tblDepartment.id
group by departID, name
order by departID asc;


----Task3
----TASK 4
SELECT tblDepartment.id, tblDepartment.name, tblDepartment.location, salary
FROM tblDepartment INNER JOIN tblEmployee
ON tblDepartment.id = tblEmployee.departID
WHERE tblEmployee.salary = (SELECT MIN(salary) FROM tblEmployee)


----TASK 5
SELECT name, AVG(salary) AS average_sal
FROM tblEmployee INNER JOIN tblDepartment
ON tblEmployee.departID = tblDepartment.id
GROUP BY tblDepartment.name
HAVING AVG(tblEmployee.salary) = (SELECT MAX(average_sal) FROM (
    SELECT AVG(salary) AS average_sal
    FROM tblEmployee
    GROUP BY departID
)  AS subquery)
