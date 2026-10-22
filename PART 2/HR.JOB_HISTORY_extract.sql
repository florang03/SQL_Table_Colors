-- Choosing fields and limiting results
SELECT
EMPLOYEE_ID,
START_DATE,
END_DATE,
JOB_ID,
DEPARTMENT_ID
From HR.JOB_HISTORY
Order by Employee_ID DESC
fetch first 100 rows only;
