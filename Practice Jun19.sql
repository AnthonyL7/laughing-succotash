-- Question #1 Select all of the patients whose names start with the letter C
SELECT first_name
FROM patients
Where first_name like 'C%';


-- Question #2 Show first name and last name of patients that weight within the range of 100 to 120 (inclusive)
SELECT first_name, last_name
FROM patients
WHERE weight between 100 and 120;

-- Question #3 Update the patients table for the allergies column. If the patient's allergies is null then replace it with 'NKA'
UPDATE patients
SET allergies = 'NKA'
WHERE allergies IS NULL

-- Question #4 Show first name and last name concatinated into one column to show their full name.
SELECT first_name || ' ' ||  last_name AS full_name
FROM patients
;

-- Question #5 Show first name, last name, and the full province name of each patient. Example: 'Ontario' instead of 'ON'
SELECT first_name, last_name, province_name
FROM patients
FULL OUTER JOIN province_names
ON patients.province_id = province_names.province_id
;