# Experiment 001 — Clinical Data Investigation

**Project:** $toned$cientist  
**Status:** In Progress  
**Tools:** MySQL, DBeaver  
**Dataset:** Synthea synthetic patient data

## 1. Project Overview

This project investigates a synthetic healthcare dataset using SQL.

The objective is to explore patient records, assess data quality, and identify meaningful patterns through structured data analysis.

The investigation follows a scientific approach: inspect the data, test assumptions, document findings, and draw conclusions supported by the results.

## 2. Research Question

How reliable and suitable is the patient dataset for further healthcare data analysis?

## 3. Dataset Overview

The `clinical_research` database currently contains two identified tables:

- `patients`
- `allergies`

The initial investigation focuses on the `patients` table.

**Initial observations:**
- Total patient records: 111
- Number of columns: 28
- Fields include demographic, geographic, financial, and patient identification information.

## 4. Tools and Technologies

- MySQL — querying and analysing the database.
- DBeaver — database management and SQL execution.

## 5. Initial Data Quality Assessment

The first stage examined the integrity of patient identifiers.

| Quality check | Result |
|---|---:|
| Total patient records | 111 |
| Missing patient IDs (`NULL`) | 0 |
| Duplicate patient IDs | 0 |
| Empty patient IDs | 0 |

### SQL Queries

**Count patient records**
```sql
SELECT COUNT(*) AS total_patients
FROM patients;
```

**Check for missing patient IDs**
```sql
SELECT COUNT(*) AS missing_patient_ids
FROM patients
WHERE Id IS NULL;
```

**Check for duplicate patient IDs**
```sql
SELECT Id, COUNT(*) AS occurrences
FROM patients
GROUP BY Id
HAVING COUNT(*) > 1;
```

**Check for empty patient IDs**
```sql
SELECT COUNT(*) AS empty_patient_ids
FROM patients
WHERE Id = '';
```

## 6. Initial Findings

The initial checks found:

- 111 patient records in the table.
- No patient IDs with `NULL` values.
- No duplicate patient IDs detected.
- No empty patient IDs detected.

These results suggest that the patient identifier field passed the three initial quality checks.

However, these checks do not establish that every other column is complete or accurate.

## 7. Next Steps

The investigation will continue with:

1. Checking missing values across other columns.
2. Examining demographic distributions.
3. Investigating patient age and mortality patterns.
4. Exploring healthcare expenses and coverage.
5. Analysing the allergies table.
6. Developing visualisations and documenting conclusions.

## 8. Project Reflection

This experiment demonstrates the importance of understanding a dataset before attempting deeper analysis.

A reliable analysis begins with asking the right questions, examining the underlying data, and validating its quality.

---

*The lab never sleeps.*  
**Question Everything. Seek Deeper Truths.**
