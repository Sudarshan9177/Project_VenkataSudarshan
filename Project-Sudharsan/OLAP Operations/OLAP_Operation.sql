4)

Create table Sales_sample(Product_Id Integer Primary key, Region varchar(50),date_ Date, Sales_Amount Numeric);

Insert into Sales_sample values (1,'East,'25-03-2023',5000),(2,'East','25-05-2023',5900),
(3,'West','08-05-2023',4950),(4,'West','07-05-2023',4000),(5,'North,'06-05-2023',4840),
(6,'North','05-05-2023',5950),(7,'South','04-05-2023',5900),(8,'South','03-05-2023',5700);

3 a)

select region,product_id,sum(sales_amount) as total_sales
from Sales_sample
group bY region,product_id
Order BY region,product_id;

b)

Select Case When Product_Id Is Null Then 'Total' Else Region End As Region,Sum(Sales_Amount) AS total_sales
From sales_sample GROUP BY ROLLUP (Region, Product_Id) ORDER BY Region;

c)

SELECT CASE WHEN Product_Id IS NULL AND Region IS NULL AND Date_ IS NULL THEN 'Total'
WHEN Product_Id IS NULL AND Region IS NULL THEN 'Total by Date'
WHEN Product_Id IS NULL AND Date_ IS NULL THEN 'Total by Region'
WHEN Region IS NULL AND Date_ IS NULL THEN 'Total by Product'
WHEN Product_Id IS NULL THEN 'Total by Region, Date'
WHEN Region IS NULL THEN 'Total by Product, Date'
WHEN Date_ IS NULL THEN 'Total by Product, Region'
ELSE 'Detail'
END AS Perspective,Product_Id,Region,Date_, SUM(Sales_Amount) AS total_sales FROM sales_sample
GROUP BY CUBE (Product_Id, Region, Date_) ORDER BY Product_Id, Region, Date_;


d)

Select * From Sales_sample Where Region = 'East' and Date_ Between '06-05-2023' and '30-05-2023'

e)

SELECT 
    Product_Id,
    Region,
    Date_,
    SUM(Sales_Amount) AS total_sales
FROM 
    sales_sample
WHERE
    Product_Id = '4' AND
    Region = 'West' AND
    Date_ = '07-05-2023'
GROUP BY 
    Product_Id, Region, Date_;