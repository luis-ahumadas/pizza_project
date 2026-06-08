SELECT * FROM pizza_sales;

/* 
Average Order Value: The average amount spent per order, calculated dividing
the total revenue by the total number of orders
*/
SELECT SUM(total_price) / COUNT(DISTINCT order_id) AS Avg_Order_Value 
FROM pizza_sales;

/* 
Total Pizzas Sold: The sum of the quantities of all pizzas sold
*/
SELECT SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales;

/*
Total Orders: The total number of orders placed
*/
SELECT COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales;

/*
Average Pizzas Per Order: The average number of pizzas sold per order, calculated
by dividing the total number of pizzas sold by the total number of orders
*/
SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS Avg_Pizza_Per_Order
FROM pizza_sales;


/*
Daily Trend for Total Orders:
*/
SELECT 
	DATENAME(DW, order_date) AS Order_Day,
	COUNT(DISTINCT order_id) AS Total_Orders
FROM
	pizza_sales
GROUP BY
	DATENAME(DW, order_date);

/*
Montly Trend for Total Orders
*/
SELECT 
	DATENAME(MONTH, order_date) AS Month_Name,
	COUNT(DISTINCT order_id) AS Total_Orders
FROM
	pizza_sales
GROUP BY
	DATENAME(MONTH, order_date)
ORDER BY
	Total_Orders DESC;

/*
Percentage of Sales by Pizza Category
*/
SELECT 
	pizza_category,
	SUM(total_price) AS Total_Sales,
	SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales WHERE MONTH(order_date) = 1) AS PCT
FROM pizza_sales
WHERE MONTH(order_date) = 1
GROUP BY pizza_category;

/*
Percentage of Sales by Pizza Size
*/
SELECT 
	pizza_size,
	CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_Sales,
	CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales WHERE DATEPART(QUARTER, order_date) = 1) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
WHERE DATEPART(QUARTER, order_date) = 1
GROUP BY pizza_size
ORDER BY PCT DESC;

/*
Top 5 Pizzas by Revenue
*/
SELECT 
	TOP 5 pizza_name,
	SUM(total_price) AS Total_Revenue
FROM
	pizza_sales
GROUP BY
	pizza_name
ORDER BY
	Total_Revenue DESC;

/*
Bottom 5 Pizzas by Revenue
*/
SELECT 
	TOP 5 pizza_name,
	SUM(total_price) AS Total_Revenue
FROM
	pizza_sales
GROUP BY
	pizza_name
ORDER BY
	Total_Revenue ASC;


/*
*/
SELECT 
	TOP 5 pizza_name,
	SUM(quantity) AS Quantity
FROM
	pizza_sales
GROUP BY
	pizza_name
ORDER BY
	Quantity ASC;

/*
*/
SELECT 
	TOP 5 pizza_name,
	SUM(quantity) AS Quantity
FROM
	pizza_sales
GROUP BY
	pizza_name
ORDER BY
	Quantity DESC;


/*
*/
SELECT 
	TOP 5 pizza_name,
	COUNT(DISTINCT order_id) AS Total_Orders
FROM
	pizza_sales
GROUP BY
	pizza_name
ORDER BY
	Total_Orders DESC;

/*
*/
SELECT 
	TOP 5 pizza_name,
	COUNT(DISTINCT order_id) AS Total_Orders
FROM
	pizza_sales
GROUP BY
	pizza_name
ORDER BY
	Total_Orders ASC;