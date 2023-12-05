-- Query 1: List the employee number, last name, first name, sex, and salary of each employee (2 points):
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM Employees e
JOIN Salaries s ON e.emp_no = s.emp_no;

-- Query 2: List the first name, last name, and hire date for the employees who were hired in 1986 (2 points):
SELECT first_name, last_name, hire_date
FROM Employees
WHERE YEAR(hire_date) = 1986;

-- Query 3: List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points):
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM Dept_manager dm
JOIN Departments d ON dm.dept_no = d.dept_no
JOIN Employees e ON dm.emp_no = e.emp_no;

-- Query 4: List the department number for each employee along with that employee's employee number, last name, first name, and department name (2 points):
SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM Dept_emp de
JOIN Employees e ON de.emp_no = e.emp_no
JOIN Departments d ON de.dept_no = d.dept_no;

-- Query 5: List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points):
SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- Query 6: List each employee in the Sales department including their employee number, last name, and first name (2 points):
SELECT e.emp_no, e.last_name, e.first_name
FROM Employees e
JOIN Dept_emp de ON e.emp_no = de.emp_no
JOIN Departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- Query 7: List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points):
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees e
JOIN Dept_emp de ON e.emp_no = de.emp_no
JOIN Departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

-- Query 8: List the frequency counts, in descending order, of all the employee last names (4 points):
SELECT last_name, COUNT(*) as frequency
FROM Employees
GROUP BY last_name
ORDER BY frequency DESC;
