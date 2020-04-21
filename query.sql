--1.
SELECT e.emp_no, e.first_name, e.last_name, e.gender,s.salary
FROM employees e
JOIN salaries s
ON (e.emp_no = s.emp_no)

--2
select emp_no, first_name, last_name, hire_date
from employees
where hire_date like '1986%'

--3
select m.dept_no, d.dept_name, m.emp_no, m.from_date, m.to_date
from dept_manager m
join departments d
on (m.dept_no = d.dept_no)

--4
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de on (e.emp_no=de.emp_no)
join departments d on (de.dept_no=d.dept_no)


--5
select *
from employees
where (first_name = 'Hercules' and last_name like 'B%')

--6
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de on (e.emp_no=de.emp_no)
join departments d on (de.dept_no=d.dept_no)
where (d.dept_name in ('Sales'))

--7
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de on (e.emp_no=de.emp_no)
join departments d on (de.dept_no=d.dept_no)
where (d.dept_name in ('Sales','Development'))

--8

SELECT last_name, COUNT(emp_no) AS "Number of People"
FROM employees
GROUP BY last_name
order by "Number of People" desc



