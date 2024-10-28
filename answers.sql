-- Creating the Database 
CREATE DATABASE hospital_db;

-- Instatiating instance (Database) for use
USE DATABASE hospital_db;

-- Creating the patients table
CREATE TABLE patients (
patient_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR (50) NOT NULL,
last_name VARCHAR (50) NOT NULL,
date_of_birth DATE NOT NULL,
gender VARCHAR (10) NOT NULL,
language VARCHAR (50) NOT NULL
);

-- Creating the providers table
CREATE TABLE providers (
provider_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR (50) NOT NULL,
last_name VARCHAR (50) NOT NULL,
provider_speciality VARCHAR (200) NOT NULL,
email_address VARCHAR (225),
phone_number VARCHAR (20),
date_joined DATE NOT NULL
);

-- Creating the visits table
CREATE TABLE visits (
visit_id INT PRIMARY KEY AUTO_INCREMENT,
patient_id INT,
provider_id INT,
date_of_visit DATE NOT NULL,
date_scheduled DATE NOT NULL,
visit_department_id INT NOT NULL,
visit_type VARCHAR(255), 
blood_pressure_systollic INT,
blood_pressure_diastollic DECIMAL,
visit_status VARCHAR(255) NOT NULL,
FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
FOREIGN KEY (provider_id) REFERENCES providers(provider_id)
);

-- Creating the ed_visits table
CREATE TABLE ed_visits (
ed_visit_id INT PRIMARY KEY AUTO_INCREMENT,
visit_id INT,
patient_id INT,
acuity INT NOT NULL,
reason_for_visit VARCHAR(255) NOT NULL,
disposition VARCHAR (500),
FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
FOREIGN KEY (visit_id) REFERENCES visits(visit_id)
);

-- Creating the admissions table
CREATE TABLE admissions (
admission_id INT PRIMARY KEY AUTO_INCREMENT,
patient_id INT,
admission_date DATE NOT NULL,
discharge_date DATE NOT NULL,
discharge_disposition VARCHAR (500) NOT NULL,
service VARCHAR(500) NOT NULL,
primary_diagnosis VARCHAR (500) NOT NULL,
FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

-- Creating the discharges table
CREATE TABLE discharges (
discharge_id INT PRIMARY KEY AUTO_INCREMENT,
admission_id INT,
patient_id INT,
discharge_date DATE NOT NULL,
discharge_disposition VARCHAR (500) NOT NULL,
FOREIGN KEY (admission_id) REFERENCES admissions (admission_id),
FOREIGN KEY (patient_id) REFERENCES patients (patient_id)
);