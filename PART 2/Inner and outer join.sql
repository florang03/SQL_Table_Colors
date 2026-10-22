-- inner join in between HR.Job_history to HR. Employees on Employee ID
SELECT
    e.employee_id,
    e.first_name||''|| e.last_name AS employee_name,
    e.JOB_ID AS current_job,
    jh.job_id AS previous_job,
    jh.DEPARTMENT_ID as previous_dept
From hr.EMPLOYEES e
Inner join hr.JOB_HISTORY jh
    on e.EMPLOYEE_ID = jh.EMPLOYEE_ID
order by e.EMPLOYEE_ID DESC
fetch first 100 rows only;

-- outer join in between HR.Job_history to HR. Employees on Employee ID
SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    jh.job_id AS previous_job
FROM hr.employees e
FULL OUTER JOIN hr.job_history jh
    ON e.employee_id = jh.employee_id;
