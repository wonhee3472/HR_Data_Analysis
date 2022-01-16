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

