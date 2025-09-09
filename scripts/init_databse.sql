USE master;
go

if exists (select 1 from sys.databases where name = 'ANTOV_DataWarehouse')
begin 
     alter database Antov_DataWarehouse set single_user with rollback immediate;
     drop database Antov_DataWarehouse;
end
go

create database ANTOV_DataWarehouse;
go

use ANTOV_DataWarehouse;
go

create schema bronze;
go
create schema silver;
go
create schema gold;
go
