insert into silver.erp_loc_a101(
cid,
cntry)
SELECT 
replace(cid,'-','') as cid,
case when trim(cntry) = 'DE' then 'Germany'
     when trim(cntry)  in ('US','USA') then 'United States'
     when trim(cntry) = '' or cntry is null then 'n/a'
     else cntry
end as cntry


FROM bronze.erp_loc_a101
