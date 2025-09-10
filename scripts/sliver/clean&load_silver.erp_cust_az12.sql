insert into silver.erp_cust_az12(
cid,
bdat,
gen
)
SELECT 
case when cid like 'NASA%' then SUBSTRING(cid,4,len(cid))
     else cid
end as cid,
case when bdat > getdate() then null
     else bdat
end as bdat,
case when upper(trim(gen)) in ('F','Female') then 'Female'
     when upper(trim(gen)) in ('M','Male') then 'Male'
     else 'n/a'
end as gen
FROM bronze.erp_cust_az12
