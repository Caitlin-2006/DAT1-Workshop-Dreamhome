.open dreamhome.sqlite
.mode column
.mode box

--SELECT c.clientNo, fName, lName, propertyNo, comment
--FROM client c
--INNER JOIN viewing v ON c.clientNo = v.clientNo;

--SELECT s.branchNo, s.staffNo, s.fName, s.lName, p.propertyNo 
--FROM staff s 
--INNER JOIN propertyforrent p ON s.staffNo = p.staffNo 
--ORDER BY s.branchNo, s.staffNo, propertyNo;

--SELECT b.branchno,b.city,s.staffno,s.lname,p.propertyno
--FROM branch b, propertyforrent p
--INNER JOIN staff s ON b.branchno = s.branchno AND s.staffno = p.staffno
--ORDER BY b.branchno, s.staffno, p.propertyno;