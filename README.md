# sql-challenge
Week 9 SQL Home Work

> Created by Dale Currigan  
> May 2021  
  
![SQL](Output/sql.png)    

## Table of contents  
* [Project Intro](#Project-Intro)  
* [Project Structure](#Project-Structure)  
* [Setup](#Setup)  
* [Analysis](#Analysis)  
* [Contributors](#Contributors)  
* [Status](#Status)  

# Project Intro
This project covers the week 9 SQL homework project - Employee Database: A Mystery in Two Parts  
  
The project briefing was as follows:  
  
*It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.
In this assignment, you will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. 


# Project Structure
```
sql-challenge   
|  
|__ EmployeeSQL  
|   | 
|   |__ ERD.png                         # Entity Relationship Diagram of the Database
|   |__ Schema.sql                      # SQL file of the table schemata
|   |__ Data Analysis.sql               # SQL file of the analysis queries 
|   |__ SQL-Analysis.ipynb              # Jupyter Notebook containing the additional bonus analysis
|   |__ config.py                       # Config file for user name and password  
|   |
|   |__ data/                           # Contains raw data to insert into table schema  
|   |   |__ departments.csv                    # department data  
|   |   |__ dept_emp.csv                       # junction table  
|   |   |__ dep_manager.csv                    # department managers  
|   |   |__ employees.csv                      # employee data  
|   |   |__ salaries.csv                       # employee salaries  
|   |   |__ titles.csv                         # titles  
|   |   
|   |__ Output/                         # Plots generated by jupyter notebook analyses & screenshots of PostgreSQL queries  
|   |   |__ question_1.png
|   |   |__ question_2.png
|   |   |__ question_3.png
|   |   |__ question_4.png
|   |   |__ question_5.png
|   |   |__ question_6.png
|   |   |__ question_7.png
|   |   |__ question_8.png
|   |   |__ salary_query.png  
|   |   |__ salary_histogram.png
|   |   |__ avg_salary_title.png
|   |   |__ my_salary.png
``` 
  
# Setup 
The Entity Relationship Diagram (ERD) below describes the structure and relationship present in the database:  

![SQL](ERD.png)  
  
To perform the queries below the database can be establised as follows:  
1. Create a new Database   
2. Create tables using table schemata in schema.sql  
3. Importing csv files into tables from the data folder  
    **Note:** Due to the foreign keys described in the schema, the csv's should be imported in the folllowing order:  
              1. departments.csv --> 2. titles.csv --> 3. employees.csv --> 4. dept_emp.csv -->  5. dept_manager.csv --> 6. salaries.csv
5. Run queries from the 'Data Analysis.sql' file  
  
The 'Bonus' section of the homework can be loaded from the SQL-Analysis.ipynb notebook   
  
**NOTE:** This notebook requires the users **PostgreSQL username and password** to be loaded into the **config.py** file in order to load the engine  
  
  
# Analysis  
  
#### Question 1: List the following details of each employee: employee number, last name, first name, sex, and salary   

![SQL](Output/question_1.png)  

#### Question 2: List first name, last name, and hire date for employees who were hired in 1986.

![SQL](Output/question_21.png)  

#### Question 3: List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name. 
  
![SQL](Output/question_3.png)   
   
#### Question 4: List the department of each employee with the following information: employee number, last name, first name, and department name. 
  
![SQL](Output/question_4.png)  

#### Question 5: List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B." 

![SQL](Output/question_5.png)  

#### Question 6: List all employees in the Sales department, including their employee number, last name, first name, and department name. 

![SQL](Output/question_6.png)  

#### Question 7: List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name. 

![SQL](Output/question_7.png)  

#### Question 8: In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

![SQL](Output/question_8.png)  

#### Question 9: Create a histogram to visualize the most common salary ranges for employees.

![SQL](Output/salary_histogram.png)  

#### Question 10: Create a bar chart of average salary by title.

![SQL](Output/salary_query.png)  
  
![SQL](Output/avg_salary_title.png)  

#### Question 11: Epilogue: Evidence in hand, you march into your boss's office and present the visualization. With a sly grin, your boss thanks you for your work. On your way out of the office, you hear the words, "Search your ID number." You look down at your badge to see that your employee ID number is 499942.

Unfotunately it appears I'm not payed well...  
  
![SQL](Output/my_salary.png)  

    
# Contributors  
- [@dcurrigan](https://github.com/dcurrigan) - <dcurrigan@gmail.com>


## Status
Project is: 
````diff 
+ Completed
````
