truncate table bronze.crm_cust_info;
bulk insert bronze.crm_cust_info
from 'C:\Users\A654146\OneDrive - ATOS\Desktop\SQL DW\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
with (
      firstrow = 2,
      fieldterminator = ',',
      tablock
);
go

truncate table bronze.crm_prd_info;
bulk insert bronze.crm_prd_info
from 'C:\Users\A654146\OneDrive - ATOS\Desktop\SQL DW\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
with (
      firstrow = 2,
      fieldterminator = ',',
      tablock
);
go

truncate table bronze.crm_sales_details;
bulk insert bronze.crm_sales_details
from 'C:\Users\A654146\OneDrive - ATOS\Desktop\SQL DW\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
with (
      firstrow = 2,
      fieldterminator = ',',
      tablock
);
go


