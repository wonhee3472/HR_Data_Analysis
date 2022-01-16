# Pewlett-Hackard-Analysis

## Overview of the analysis: 
Pewlett-Hackard is a huge company with severeal thousands of employees and it's been around for a long time. As the baby boomer generation begins to retire at rapid rate, the company is preparing itself by doing two things: 1. it's offering a retirement package for those who meet certain criteria; 2. it's starting to think about which positions will need to be filled in a near future. 

The number of upcoming retirements will open up thousand of job openings. Bobby, a HR analyst for the company, is tasked to perform employee research. First, he needs to find out who will be retiring in the next few years. And next, he needs to know how many positions will the company have to fill. 

For this specific project, I'm going to be helping Bobby to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program.

## Results:

### Fig #1: Number of Retirees by Title
![](Data/retiring_titles.png)

The table indicates that there will be a great need to hire more engineers at the same or similar level of experience or promote the junior engineers internally since almost 26,000 senior engineers are retiring. Also, since there will be 10,000 engineers retiring (9,285 engineers and 1,090 assistance engineers), the company will definitely have to alert the HR department that they will need to reach outwardly to get the talents.

### Fig #2: Number of Eligible Mentors by Title
![](Data/mentors_by_title.png)

I ran a new query to see how many mentors will be available per title and the screenshot is what I've acquired. From these numbers, it's concerning to find out that there is a very small number of mentors available for the senior engineer position. Here we have 281 senior engineers who will be eligible for mentoring the new senior engineers. Hypothetically, each of them will have to mentor about 92 candidates (25,916/281 = 92.2) which is quite overwhelming. This is only IF all of the retirees are willing to step up and mentor otherwise the ratio would get even staggering. The HR department would have to notify each department that they need to make some preparations accordingly. Perhaps they could have the retirees write out some sort of documentation on their job descriptions so that they won't have to face the situation as explained above.

## Summary: 
Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?