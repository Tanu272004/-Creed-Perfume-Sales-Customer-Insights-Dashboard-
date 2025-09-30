-- Total Revenue 
SELECT
PerfumeName,
SUM(TotalAmount) as Total_Revenue
From optimum-courier-472707-k9.creed_perfume_data.perfume_sales
Group by PerfumeName
Order by Total_Revenue DESC;

-- Sales Count
SELECT
Count(*) as Total_Sales
From optimum-courier-472707-k9.creed_perfume_data.perfume_sales;


-- Top-Selling Perfumes by Revenue
SELECT 
  PerfumeName,
  ROUND(SUM(TotalAmount), 2) AS Revenue,
  SUM(Quantity) AS Units_Sold
FROM 
  `optimum-courier-472707-k9.creed_perfume_data.perfume_sales`
GROUP BY PerfumeName
ORDER BY Revenue DESC;

-- Gender-wise Perfume Preferences
SELECT 
  Gender,
  PerfumeName,
  FragranceFamily,
  COUNT(*) AS Purchase_Count
FROM 
  `optimum-courier-472707-k9.creed_perfume_data.perfume_sales`
GROUP BY 
  Gender, PerfumeName, FragranceFamily
ORDER BY 
  Gender, Purchase_Count DESC;



-- (Country-wise) Sales
SELECT 
  PerfumeName,
  Country,
  SUM(TotalAmount) AS Total_Amount,
  COUNT(*) AS Total_Sales
FROM 
  `optimum-courier-472707-k9.creed_perfume_data.perfume_sales`
GROUP BY 
  Country, PerfumeName
ORDER BY 
  Total_Sales DESC;

-- - Monthly Sales Trend
SELECT
  EXTRACT(MONTH FROM PurchaseDate) AS Month,
  SUM(TotalAmount) AS Total_Amount,
  SUM(Quantity) AS Units_Sold
FROM 
  `optimum-courier-472707-k9.creed_perfume_data.perfume_sales`
GROUP BY 
  Month
ORDER BY 
  Month;

-- Purchase Channel Distribution

SELECT
PurchaseChannel,
Sum(TotalAmount) as Revenue,
Count(*) as Total_Sales
FROM 
  `optimum-courier-472707-k9.creed_perfume_data.perfume_sales`
  Group by PurchaseChannel
  Order by Total_Sales




