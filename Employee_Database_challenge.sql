-- Creating a table for retirement_titles
SELECT e.emp_no, e.first_name, e.last_name, ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rit.emp_no) rit.emp_no, 
rit.first_name,
rit.last_name,
rit.title
INTO unique_titles
FROM retirement_titles as rit
WHERE (rit.to_date = '9999-01-01')
ORDER BY rit.emp_no, rit.to_date DESC;

-- Creating a table for retiring_titles
SELECT COUNT(emp_no), title
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

-- Creating a table for mentorship_eligibility
SELECT DISTINCT ON(e.emp_no) 
e.emp_no, e.first_name, e.last_name, e.birth_date, 
de.from_date, de.to_date,
ti.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_employee as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01') AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;