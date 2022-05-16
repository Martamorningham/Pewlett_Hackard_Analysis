# Pewlett_Hackard_Analysis
PostgreSQL, employee database analysis : re created with gitignore
## Overview of the analysis

This analysis was done to help Pewlett Hackard determine how many employees were gettting ready to retire, so they could get ready to employee and train a new work force. The differnt CSV files that they had, needed to be joined to be able to read the data. First we had to create an ERD table to help keep everything in order as we continued in our analysis of PH. 
![EmployeeDB](https://user-images.githubusercontent.com/101226991/168526327-fe076923-ceb5-4cb1-b97f-4386bf9874fe.png)


## Results
### Deliverable 1 The Number of Retiring Employees by Title
USing the ERD table found in the Queires folder, I pulled the emp_no, first_name, last_name, titile, (employment) from_date, and (employment) to_date to create a titles table. We then filtered down this table to pull out employees that were born between 1953 and 1955, so we could see which employee's (by number) were potentially going to retire soon. I then filtered this by title, so each department would be able to determine how many employees will need to be replaced. 
![retirement_titles_first_10](https://user-images.githubusercontent.com/101226991/168526657-91365615-de2c-40e7-a38c-f4a2e401f229.png)


### Deliverable 2 The Employees Eligible for the Mentorship Program 
![Mentor_elegibility_table](https://user-images.githubusercontent.com/101226991/168527307-7a5cc578-dbc9-4003-a5a2-e1888f81f9a5.png)

I the found all of the employees that were close to retiring and were still with the company as of today, that could be tapped to help train the new work force coming in. 

## Summary

### Roles to be replaced
The role that will have the most people leaving is the denior engineer position followed by Senior Staff. The fewest positions that will need to be replaced are maangers, but this is skewed because they do not have many active managers at this time. 

### Companies future
 While many employees qualify for the mentorship program that will be able to train incomming employees, the Manager position may run into issues as their are so few managers that firt the cretaria. 
