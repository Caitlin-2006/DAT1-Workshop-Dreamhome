.open dreamhome.sqlite
.mode column
.mode box

--SELECT *
--FROM branch;

--SELECT *
--FROM staff;

--SELECT staffno,fname,lname,salary
--FROM staff;

--SELECT DISTINCT propertyno
--FROM viewing;

--SELECT staffno,fname,lname,salary/12 AS monthlySalary
--FROM staff;

--SELECT staffno,fname,lname,position,salary
--FROM staff
--WHERE salary > 10000;

--SELECT *
--FROM branch
--WHERE city = 'London' OR city = 'Glasgow';

--SELECT staffno,fname,lname,position,salary
--FROM staff
--WHERE salary BETWEEN 20000 AND 30000;

--SELECT staffno,fname,lname,position
--FROM staff
--WHERE position IN('Manager','Supervisor');

--SELECT ownerno,fname,lname,address,telno
--FROM privateowner
--WHERE address LIKE '%Glasgow%';

--SELECT clientno,viewdate
--FROM viewing
--WHERE propertyno = 'PR9' AND comment IS NULL;

--SELECT staffno,fname,lname,salary
--FROM staff
--ORDER BY salary DESC;

--SELECT propertyno,type,rooms
--FROM propertyforrent
--ORDER BY type;

--SELECT propertyno,type,rooms,staffno,rent
--FROM propertyforrent
--WHERE staffno IS NULL OR rent < 400
--ORDER BY type;

--SELECT COUNT(*) AS myCount
--FROM propertyforrent
--WHERE rent > 350;

--SELECT COUNT (DISTINCT propertyno) AS myCount
--FROM viewing
--WHERE viewdate BETWEEN '1-May-13' AND '31-MAY-13';

--SELECT COUNT(staffno) AS myCount, SUM(salary) AS mySum
--FROM staff
--WHERE position = 'Manager';

--SELECT MIN(salary) AS myMin, MAX(salary) AS myMax,AVG(salary) AS myAvg
--FROM staff;

--SELECT branchno, COUNT(staffno) AS myCount, SUM(salary) AS mySum
--FROM staff
--GROUP BY branchno
--ORDER BY branchno;

--SELECT branchno, COUNT(staffno) AS myCount, SUM(salary) AS mySum
--FROM staff
--GROUP BY branchno
--HAVING COUNT(staffno)>1
--ORDER BY branchno;

--SELECT staffno,fname,lname,position
--FROM staff
--WHERE branchno = (SELECT branchno
                  --FROM branch
                  --WHERE street ='163 Main St');

--SELECT staffno,fname,lname,position,
        --salary - (SELECT AVG(salary) FROM staff) AS salDiff
--FROM staff
--WHERE salary > (SELECT AVG(salary) FROM staff);

--SELECT propertyno,street,city,postcode,type,rooms
--FROM propertyforrent
--WHERE staffno IN (SELECT staffno
                  --FROM staff
                  --WHERE branchno = (SELECT branchno
                                    --FROM branch
                                    --WHERE street = '163 Main St'));

--SELECT staffno,fname,lname,position,salary
--FROM staff
--WHERE (SELECT AVG(salary) FROM staff) < salary;

--SELECT staffno, fname, lname, position, salary 
--FROM staff
--WHERE salary > SOME (SELECT salary
                     --FROM staff
                     --WHERE branchno = 'B003')

--SELECT staffno, fname, lname, position, salary 
--FROM staff 
--WHERE salary > ALL (SELECT salary
                    --FROM staff
                    --WHERE branchno = 'B003');