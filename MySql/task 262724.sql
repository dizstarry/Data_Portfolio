use employees;

--	List all employees
select first_name,last_name from employees;

--	List all departments
select dept_name from departments;

-- List all employees with their current titles
select employees.first_name,employees.last_name, titles.title
from titles
join employees using(emp_no);

-- Total Number of Employees
select count(emp_no) as total_emp from employees;

-- Average Salary by Department
select salaries.avg(salary),emp_no,departments.dept_name
from dept_emp
join salaries using(emp_no)
join departments using(dept_no); error

SELECT departments.dept_name, AVG(salaries.salary) AS avg_salary
FROM dept_emp
JOIN salaries USING (emp_no)
JOIN departments USING (dept_no)
GROUP BY departments.dept_name;

-- Top 10 Highest Paid Employees
--lect employees.first_name,last_name, salaries.salary
from salaries  rank () salaries.salary desc
join employees using(emp_no)
limit 10;--

SELECT employees.emp_no, employees.first_name, employees.last_name, salaries.salary
FROM employees
JOIN salaries  using(emp_no)
ORDER BY salaries.salary DESC
LIMIT 10;

-- Employee Count by Department
select departments.dept_name, count(*) as no_of_emp
from departments
join dept_emp using (dept_no)
group by departments.dept_name;

--salary overtime--
SELECT YEAR(from_date) AS year,SUM(salary) AS total_salary
FROM salaries
GROUP BY year
ORDER BY year;


-- Gender Distribution by Department
select * from employees;
select gender from employees;
select employees.gender, count(*) as count
from employees
group by gender;

select employees.gender, count(*) as count, departments.dept_name
from employees
join dept_emp using(
join departments using(dept_name)
group by employees.gender
order by dept_name;







