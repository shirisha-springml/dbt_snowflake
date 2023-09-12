-- readmission_counts.sql
with
    readmissionpatients as (
        select patient_id, count(*) as readmission_count
        from sample_dbt.public.test
        where re_admission = true
        group by patient_id
    )

select rp.patient_id, rp.readmission_count
from readmissionpatients rp
