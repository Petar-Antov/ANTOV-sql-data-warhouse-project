
If OBJECT_ID  ('bronze.crm_cust_info','U')  is not null
    drop table bronze.crm_cust_info;
CREATE TABLE [bronze].[crm_cust_info](
	[cst_id] [int] NULL,
	[cst_key] [nvarchar](50) NULL,
	[cst_firstname] [nvarchar](50) NULL,
	[cst_lastname] [nvarchar](50) NULL,
	[cst_marital_status] [nvarchar](50) NULL,
	[cst_gndr] [nvarchar](50) NULL,
	[cst_create_date] [date] NULL
) 

If OBJECT_ID  ('bronze.crm_prd_info','U')  is not null
    drop table bronze.crm_prd_info;
CREATE TABLE [bronze].[crm_prd_info](
	[prd_id] [int] NULL,
	[prd_key] [nvarchar](50) NULL,
	[prd_nm] [nvarchar](50) NULL,
	[prd_cost] [int] NULL,
	[prd_line] [nvarchar](50) NULL,
	[prd_start_dt] [datetime] NULL,
	[prd_end_dt] [datetime] NULL
)

If OBJECT_ID  ('bronze.crm_sales_details','U')  is not null
    drop table bronze.crm_sales_details;
CREATE TABLE [bronze].[crm_sales_details](
	[sls_ord_num] [nvarchar](50) NULL,
	[sls_prd_key] [nvarchar](50) NULL,
	[sls_cust_id] [int] NULL,
	[sls_order_dt] [int] NULL,
	[sls_ship_dt] [int] NULL,
	[sls_due_dt] [int] NULL,
	[sls_sales] [int] NULL,
	[sls_quantity] [int] NULL,
	[sls_price] [int] NULL
) 

If OBJECT_ID  ('bronze.erp_cust_az12','U')  is not null
    drop table bronze.erp_cust_az12;
CREATE TABLE [bronze].[erp_cust_az12](
	[CID] [nvarchar](50) NULL,
	[BDAT] [date] NULL,
	[GEN] [nvarchar](50) NULL
) 

If OBJECT_ID  ('bronze.erp_loc_a101','U')  is not null
    drop table bronze.erp_loc_a101;
CREATE TABLE [bronze].[erp_loc_a101](
	[CID] [nvarchar](50) NULL,
	[CNTRY] [nvarchar](50) NULL
) 

If OBJECT_ID  ('bronze.erp_px_cat_g1v2','U')  is not null
    drop table bronze.erp_px_cat_g1v2;
CREATE TABLE [bronze].[erp_px_cat_g1v2](
	[ID] [nvarchar](50) NULL,
	[CAT] [nvarchar](50) NULL,
	[SUBCAT] [nvarchar](50) NULL,
	[MAINTENANCE] [nvarchar](50) NULL
) 
