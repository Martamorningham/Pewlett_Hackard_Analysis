# Pewlett_Hackard_Analysis
PostgreSQL, employee database analysis : re created with gitignore
## Overview of the analysis

This analysis was done to help Pewlett Hackard determine how many employees were gettting ready to retire, so they could get ready to employee and train a new work force. The differnt CSV files that they had, needed to be joined to be able to read the data. First we had to create an ERD table to help keep everything in order as we continued in our analysis of PH. 
![EmployeeDB](https://user-images.githubusercontent.com/101226991/168526327-fe076923-ceb5-4cb1-b97f-4386bf9874fe.png)


## Results
### Deliverable 1 The Number of Retiring Employees by Title
USing the ERD table found in the Queires folder, I pulled the emp_no, first_name, last_name, titile, (employment) from_date, and (employment) to_date to create a titles table. We then filtered down this table to pull out employees that were born between 1953 and 1955, so we could see which employee's (by number) were potentially going to retire soon. I then filtered this by title, so each department would be able to determine how many employees will need to be replaced. 

### Deliverable 2 The Employees Eligible for the Mentorship Program 

I thne found all of the employees that were close to retiring and were still with the company as of today, that could be tapped to help train the new work force coming in. 

## Summary

##Roles to be replaced
