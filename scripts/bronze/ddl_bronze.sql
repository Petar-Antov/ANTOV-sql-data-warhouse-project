create or ALTER     procedure [bronze].[load_bronze] as
begin
 declare @start_time DATETIME, @end_time DATETIME,
         @batch_start_time DATETIME, @batch_end_time DATETIME;

begin try

set @batch_start_time = GETDATE();

print'===============================================';
print 'Load Bronze Layer';
print'===============================================';




print '------------------';
print 'Loading CRM Tables';
print '------------------';


set @start_time = GETDATE();
print '>>Truncate Table:bronze.crm_cust_info';
truncate table bronze.crm_cust_info;
print '>>Insert data Into Table:bronze.crm_cust_info';
bulk insert bronze.crm_cust_info
from 'C:\Users\A654146\OneDrive - ATOS\Desktop\SQL DW\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
with (
      firstrow = 2,
      fieldterminator = ',',
      tablock
);
set @end_time = GETDATE();
print '>>Load Duration ' +  cast(datediff(second,@start_time, @end_time) as NVARCHAR) + ' seconds';
print '---------------------------------------------';


set @start_time = GETDATE();
print '>>Truncate Table:bronze.crm_prd_info';
truncate table bronze.crm_prd_info;
print '>>Insert data Into Table:bronze.crm_prd_info';
bulk insert bronze.crm_prd_info
from 'C:\Users\A654146\OneDrive - ATOS\Desktop\SQL DW\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
with (
      firstrow = 2,
      fieldterminator = ',',
      tablock
);
set @end_time = GETDATE();
print '>>Load Duration ' +  cast(datediff(second,@start_time, @end_time) as NVARCHAR) + ' seconds';
print '---------------------------------------------';

set @start_time = GETDATE();
print '>>Truncate Table:bronze.crm_sales_details';
truncate table bronze.crm_sales_details;
print '>>Insert data Into Table:bronze.crm_sales_details';
bulk insert bronze.crm_sales_details
from 'C:\Users\A654146\OneDrive - ATOS\Desktop\SQL DW\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
with (
      firstrow = 2,
      fieldterminator = ',',
      tablock
);
set @end_time = GETDATE();
print '>>Load Duration ' +  cast(datediff(second,@start_time, @end_time) as NVARCHAR) + ' seconds';
print '---------------------------------------------';

print '------------------';
print 'Loading ERP Tables';
print '------------------';


set @start_time = GETDATE();
print '>>Truncate Table:bronze.erp_cust_az12';
truncate table bronze.erp_cust_az12;
print '>>Insert data Into Table:bronze.erp_cust_az12';
bulk insert bronze.erp_cust_az12
from 'C:\Users\A654146\OneDrive - ATOS\Desktop\SQL DW\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
with (
      firstrow = 2,
      fieldterminator = ',',
      tablock
);
set @end_time = GETDATE();
print '>>Load Duration ' +  cast(datediff(second,@start_time, @end_time) as NVARCHAR) + ' seconds';
print '---------------------------------------------';

set @start_time = GETDATE();
print '>>Truncate Table:bronze.erp_loc_a101';
truncate table bronze.erp_loc_a101;
print '>>Insert data Into Table:ronze.erp_loc_a101';
bulk insert bronze.erp_loc_a101
from 'C:\Users\A654146\OneDrive - ATOS\Desktop\SQL DW\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
with (
      firstrow = 2,
      fieldterminator = ',',
      tablock
);
set @end_time = GETDATE();
print '>>Load Duration ' +  cast(datediff(second,@start_time, @end_time) as NVARCHAR) + ' seconds';
print '---------------------------------------------';

set @start_time = GETDATE();
print '>>Truncate Table:bronze.erp_px_cat_g1v2';
truncate table bronze.erp_px_cat_g1v2;
print '>>Insert data Into Table:bronze.erp_px_cat_g1v2';
bulk insert bronze.erp_px_cat_g1v2
from 'C:\Users\A654146\OneDrive - ATOS\Desktop\SQL DW\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
with (
      firstrow = 2,
      fieldterminator = ',',
      tablock
);
set @end_time = GETDATE();
print '>>Load Duration ' +  cast(datediff(second,@start_time, @end_time) as NVARCHAR) + ' seconds';
print '---------------------------------------------';


set @batch_end_time = GETDATE();
print '>>Total Load Duration ' +  cast(datediff(second,@batch_start_time, @batch_end_time) as NVARCHAR) + ' seconds';
print '---------------------------------------------';


end try
begin catch
  print 'ERROR OCCURED DURING BRONZE LAYER LOADING!!!';
end catch

end
