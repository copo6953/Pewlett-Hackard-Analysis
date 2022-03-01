# Pewlett-Hackard-Analysis
## Overview
* The purpose of this project is to assist Pewlett-Hackard, a large technology company, determine how many employees they have that will be retirment eligible in the near future, and how many employees will be available to mentor new hires. The analysis for this project was done using PostgreSQL through pgAdmin.
### Results
* After conducting multiple queries of the data it can be concluded that:
1) There are 72,458 employees that will be retirement eligible at Pewlett-Hackard. This information was found through the use of the following query:
![unique_titles]()
2) The following is a table summarizing the total number of employees from each job title position that will be retirement eligible:
![retiring_titles_table]()
* The senior engineer position will be the biggest problem with 25,916 employees retirement eligible, and the senior staff position close behind with 24,926 employees eligible. This information was found throug the use of the following query:
![retiring_titles]()
3) There are 1,549 employees that are eligible to mentor new hires. This information was found through the use of the following query:
![mentorship_eligibility](https://github.com/copo6953/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibility.png)
4) Only 169 senior engineers are mentorship eligible.
### Summary
* 72,458 employees are retirment eligible at Pewlett-Hackard and the senior engineer (25,916 employees) and senior staff (24,926 employees) make up 70.17% of the problem.
* There are not enough mentors available for the number of new hires needed, only 169 senior engineers are available to mentor 25,916 new hires.
