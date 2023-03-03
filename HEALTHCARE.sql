CREATE DATABASE HEALTHCARE
/*1. To gain a comprehensive understanding of the factors influencing hospitalization costs, it 
is necessary to combine the tables provided. Merge the two tables by first identifying the 
columns in the data tables that will help you in merging

USE HEALTHCARE;
SELECT * FROM hospitalisation_details;
SELECT * FROM `medical examinations`;
/* Dealing with Null values
SET SQL_SAFE_UPDATES = 0;
Delete from hospitalisation_details WHERE `Customer ID`= '?';
Delete from hospitalisation_details WHERE `State ID`= '?';
Delete from hospitalisation_details WHERE `City tier`= '?';

/*a. In both tables, add a Primary Key constraint for these columns
SELECT *
FROM hospitalisation_details
JOIN `medical examinations`
ON hospitalisation_details.`Customer ID` = `medical examinations`.`Customer ID`




/*2. Retrieve information about people who are diabetic and have heart problems with their 
average age, the average number of dependent children, average BMI, and average 
hospitalization costs


SELECT `medical examinations`.`HBA1C`, `medical examinations`.`Heart Issues`, AVG(hospitalisation_details.`children`), AVG(`medical examinations`.`BMI`), AVG(hospitalisation_details.`charges`)
FROM hospitalisation_details
JOIN `medical examinations`
ON hospitalisation_details.`Customer ID` = `medical examinations`.`Customer ID`
WHERE `medical examinations`.`HBA1C` > 6.5 AND `medical examinations`.`Heart Issues` = 'yes'
GROUP BY `medical examinations`.`HBA1C`, `medical examinations`.`Heart Issues`;

/*3. Find the average hospitalization cost for each hospital tier and each city level


SELECT `Hospital tier`, `City tier`, AVG(charges)
FROM healthcare.hospitalisation_details
GROUP BY `Hospital tier`,`City tier`;

/*4. Determine the number of people who have had major surgery with 
a history of cancer

SELECT COUNT(NumberOfMajorSurgeries)
FROM HEALTHCARE.`medical examinations`
WHERE `Cancer history`='Yes';

/*5. Determine the number of tier-1 hospitals in each state

SELECT `State ID`, COUNT(*) as `Number of Tier-1 Hospitals`
FROM HEALTHCARE.`hospitalisation_details`
WHERE `Hospital Tier` = 'tier-1'
GROUP BY `State ID`;






















