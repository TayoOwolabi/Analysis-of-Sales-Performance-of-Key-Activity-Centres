--Distinct years in data

select distinct year([Date]) as year from [dbo].[Sales_project] order by year desc
	

--Total number of products

select count (distinct(ProductId)) as No_of_Products from [dbo].[Sales_project]


--Total number of stores	

select count(distinct(StoreId)) as No_of_stores from [dbo].[Sales_project]
	

--Total Revenue per year in descending order

SELECT distinct(year(date)) as year, SUM(UnitPrice * Quantity) as Revenue from [dbo].[Sales_project] group by year(date) order by Revenue desc


--Top 5 stores 

select top 5 ([StoreId]) as Store, SUM([UnitPrice]*[Quantity]) as Top5_Revenue_Overall
from [dbo].[Sales_project] group by [StoreId] order by Top5_Revenue_Overall Desc


--Bottom 5 stores

select top (34-29) ([StoreId]) as Store, SUM([UnitPrice]*[Quantity]) as Bottom5_Revenue_Overall
from [dbo].[Sales_project] group by [StoreId] order by Bottom5_Revenue_Overall ASC


--Top 5 Products

select top 5([ProductId]) as Product, SUM([UnitPrice]*[Quantity]) as Top5_Revenue_Overall
from [dbo].[Sales_project] group by [ProductId] order by Top5_Revenue_Overall desc

--Bottom 5 products

select top (909-904) ([ProductId]) as Product, SUM([UnitPrice]*[Quantity]) as Bottom5_Revenue_Overall
from [dbo].[Sales_project] group by [ProductId] order by Bottom5_Revenue_Overall asc
