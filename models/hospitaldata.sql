-- readmission_counts.sql

WITH ReadmissionPatients AS (
  SELECT
    PATIENT_ID,
    COUNT(*) AS READMISSION_COUNT
  FROM
    SAMPLE_DBT.PUBLIC.TEST
  WHERE
    RE_ADMISSION = TRUE
  GROUP BY
    PATIENT_ID
)

SELECT
  RP.PATIENT_ID,
  RP.READMISSION_COUNT
FROM
  ReadmissionPatients RP
