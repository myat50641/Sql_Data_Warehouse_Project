



If EXISTS( Select 1 from sys.databases where name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse 
	Set SINGLE_USER With Rollback Immediate;
	Drop DATABASE DataWarehouse;
END
GO
---------Create Data Warehouse-----------
use [master]
CREATE DATABASE DataWarehouse;

-------Create Schema-------------

USE DataWarehouse;
GO
CREATE SCHEMA Bronze;
GO
CREATE SCHEMA Silver;
GO
CREATE SCHEMA Gold;
GO


