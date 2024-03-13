SELECT department_name, AVG(salary) AS average_salary
FROM employees
JOIN departments ON employees.department = departments.department_id
GROUP BY department_name;
