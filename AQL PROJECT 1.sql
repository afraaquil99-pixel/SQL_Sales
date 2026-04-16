
-- -- how many sales we have
SELECT COUNT(*) AS total_sales FROM sales.retail_sales;
-- HOW MANY CUSTOMERS WE HAVE?
SELECT COUNT( DISTINCT customer_id) AS total_sales FROM retail_sales;
-- DATA ANALYST& BUSINESS KEY PROBLEMS
-- WRITE A SQL QUERY TO RETRIEVE ALL COLOUMNS FOR SALES MADE ON '2022-11-05'?
SELECT * FROM retail_sales
WHERE sale_date = '2022-11-05';
-- Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022:
SELECT
 *
FROM sales.retail_sales
WHERE category = 'clothing'
AND 
DATE_FORMAT(sale_date, '%Y-%m') = '2022-11'
AND 
quantiy>= 4;
-- Write a SQL query to calculate the total sales (total_sale) for each category.
SELECT 
category,
SUM(total_sale) as net_sale
FROM retail_sales
GROUP BY 1;
-- Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.:
SELECT
avg(age) as ag_age
FROM retail_sales
WHERE category = 'Beauty';
-- Write a SQL query to find all transactions where the total_sale is greater than 1000
SELECT * FROM retail_sales
where total_sale > '1000';
-- Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.:
SELECT 
category,
gender,
COUNT(*) AS total_trans
FROM retail_sales
GROUP BY 
category,
gender
ORDER BY 1;
-- Write a SQL query to calculate the average sale for each month. Find out best selling month in each year:
SELECT
YEAR(sale_date) as year,
MONTH(sale_date) as month,
AVG(total_sale) as avg_sale
 FROM retail_sales
 GROUP BY 1, 2 
 ORDER BY 1,2 ASC;
 -- Write a SQL query to find the top 5 customers based on the highest total sales
 SELECT 
  DISTINCT customer_id,
 SUM(total_sale) as total_sales
 FROM retail_sales
 GROUP BY 1
 ORDER BY 2 DESC;
 -- Write a SQL query to find the number of unique customers who purchased items from each category
SELECT
category,
COUNT(DISTINCT customer_id) as unique_customers
FROM retail_sales
GROUP BY category;


-- END OF PROJECT









