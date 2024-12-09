# Hospital Database Project
Welcome to the Hospital Database Project! This project focuses on SQL and database fundamentals through hands-on experience creating a database structure for a hypothetical hospital. I modelled a database using an ERD and then brought it to life by creating tables and defining relationships. This README provides a clear guide to the project's structure, requirements, process.

## Project Overview
The goal of this project was to practice SQL and database concepts by:

1. Understanding the applications of SQL, especially for web development.
2. Learning about essential database components: tables, columns, data types, and primary/foreign keys.
3. Designing a basic database schema with relationships and constraints.
3. Creating and populating a hospital database.

## Project Objectives
By completing this project, yI have been able to:

1. Understand the purpose and applications of SQL in web applications.
2. Identify and implement the basic components of a database, including tables, columns, and data types.
3. Design and create a database schema for a hospital system.

## Project Requirements
1. Computer with internet access
2. Code Editor (e.g., Visual Studio Code)
3. Drawing Software (e.g., Draw.io, Lucidchart) for designing the ERD (Entity-Relationship Diagram)
4. MySQL Workbench for executing SQL queries
  
## Part 1: Database Modelling
Using a software of choice eg. draw.io, lucid chart etc, I drew a well defined Entity Relationship Diagram (ERD) of the database whose fields are outlined below. After which I exported or downloaded the diagram in pdf format.

<br/><br/>
**Table Name:** patients
| FIELD | DATA TYPE | CONSTRAINTS |
|------------|--------------|-----------------|
| patient_id | INT | PRIMARY KEY, AUTO_INCREMENT |
| first_name | VARCHAR | NOT NULL|
| last_name | VARCHAR | NOT NULL |
| date_of_birth | DATE | NOT NULL |
| gender | VARCHAR | NOT NULL |
| language | VARCHAR | NOT NULL |


<br/><br/>
**Table Name:** providers
| FIELD | DATA TYPE | CONSTRAINTS |
|------------|--------------|-----------------|
| provider_id | INT | PRIMARY KEY AUTO_INCREMENT |
| first_name | VARCHAR | NOT NULL |
| last_name | VARCHAR | NOT NULL |
| provider_speciality | VARCHAR | NOT NULL |
| email_address | VARCHAR |  |
| phone_number | VARCHAR |  |
| date_joined | DATE | NOT NULL |

<br/><br/>
**Table Name:** visits
| FIELD | DATA TYPE | CONSTRAINTS |
|------------|--------------|-----------------|
| visit_id | INT | PRIMARY KEY, AUTO_INCREMENT |
| patient_id | INT | FOREIGN KEY REFERENCES patients(patient_id) |
| provider_id | INT | FOREIGN KEY REFERENCES providers(provider_id) |
| date_of_visit | DATE | NOT NULL |
| date_scheduled | DATE | NOT NULL |
| visit_department_id | INT | NOT |
| visit_type | VARCHAR | NOT NULL |
| blood_pressure_systollic | INT | |
| blood_pressure_diastollic | DECIMAL | |
| pulse | DECIMAL |  |
| visit_status | VARCHAR | NOT NULL|

<br/><br/>
**Table Name:** ed_visits
| FIELD | DATA TYPE | CONSTRAINTS |
|------------|--------------|-----------------|
| ed_visit_id | INT | PRIMARY KEY, AUTO_INCREMENT |
| visit_id | INT | FOREIGN KEY REFERENCES visits(visit_id) |
| patient_id | INT | FOREIGN KEY REFERENCES patients(patient_id) |
| acuity | INT | NOT NULL |
| reason_for_visit | VARCHAR | NOT NULL |
| disposition | VARCHAR | NOT NULL |

<br/><br/>
**Table Name:** admissions
| FIELD | DATA TYPE | CONSTRAINTS |
|------------|--------------|-----------------|
| admission_id | INT | PRIMARY KEY, AUTO_INCREMENT |
| patient_id | INT | FOREIGN KEY REFERENCE patients(patients_id) |
| admission_date | DATE | NOT NULL |
| discharge_date | DATE | NOT NULL |
| discharge_disposition | VARCHAR | NOT NULL |
| service | VARCHAR | NOT NULL |
| primary_diagnosis | VARCHAR | NOT NULL |


<br/><br/>
**Table Name:** discharges
| FIELD | DATA TYPE | CONSTRAINTS |
|------------|--------------|-----------------|
| discharge_id | INT | PRIMARY_KEY, AUTO_INCREMENT |
| admission_id | INT | FOREIGN KEY REFERENCES admissions(admission_id) |
| patient_id | INT | FOREIGN KEY REFERENCES patients(patients_id) |
| discharge_date | DATE | NOT NULL|
| discharge_disposition | VARCHAR | NOT NULL |

<br/><br/>
## Part 2: Creating a database
After I created a model of the database, I built it using SQL. Created database named ```hospital_db```.

<br/><br/>
## Part 3: Creating Tables
After creating the database the next step was creating the tables, but before I started making any changes to the database, I needed to make sure it was selected. I selected the database using the ```USE``` keyword.<br/>
After selecting the database, I proceeded to creating the tables using the information provided in the tables above. For Example (see blow)
```sql
CREATE TABLE patients(
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(10),
    language VARCHAR(20) NOT NULL
);
```

All queries for the database and tables creation are saved in the `answers.sql file`
<br/><br/>



