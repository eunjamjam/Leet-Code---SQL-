# Write your MySQL query statement below
# find  patient_id ,patient_name and condition (who have type I diabetes)
# DIABI
select patient_id,patient_name,conditions
from Patients
where conditions like "% DIAB1%" or  conditions like "DIAB1%"