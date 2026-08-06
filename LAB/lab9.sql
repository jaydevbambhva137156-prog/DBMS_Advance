--program 9  Write a PL/SQL block which displays all records of Male employees working in the HR Dept from the EMP table.
SET SERVEROUTPUT  
DECLARE
  CURSOR c_emp IS
    SELECT empno, ename, gender, dept 
    FROM emp 
    WHERE UPPER(gender) = 'MALE' 
      AND UPPER(dept) = 'HR';
      
  r_emp c_emp%ROWTYPE;
BEGIN
  OPEN c_emp;
  LOOP
    FETCH c_emp INTO r_emp;
    EXIT WHEN c_emp%NOTFOUND;
    
    DBMS_OUTPUT.PUT_LINE('ID: ' || r_emp.empno || 
                         ' | Name: ' || r_emp.ename || 
                         ' | Dept: ' || r_emp.dept || 
                         ' | Gender: ' || r_emp.gender);
  END LOOP;
  CLOSE c_emp;
END;
/
