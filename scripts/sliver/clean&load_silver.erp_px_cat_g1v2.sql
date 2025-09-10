insert into silver.erp_px_cat_g1v2(
id,
cat,
subcat,
MAINTENANCE
)
SELECT 
ID,
trim(CAT) as cat,
trim(SUBCAT) as subcat,
trim(MAINTENANCE) as MAINTENANCE
FROM bronze.erp_px_cat_g1v2


