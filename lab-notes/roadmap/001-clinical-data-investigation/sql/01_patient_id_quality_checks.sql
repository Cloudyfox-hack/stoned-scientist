
-- Experiment 001: Clinical Data Investigation
-- Stage 1: Patient ID data quality checks

USE clinical_research;

-- 1. Count total patient records
SELECT COUNT(*) AS total_patients
FROM patients;

-- 2. Check for NULL patient IDs
SELECT COUNT(*) AS missing_patient_ids
FROM patients
WHERE Id IS NULL;

-- 3. Identify duplicate patient IDs
SELECT Id, COUNT(*) AS occurrences
FROM patients
GROUP BY Id
HAVING COUNT(*) > 1;

-- 4. Check for empty patient IDs
SELECT COUNT(*) AS empty_patient_ids
FROM patients
WHERE Id = '';
