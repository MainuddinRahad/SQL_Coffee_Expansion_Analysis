
/*

-- Average Sales Amount per City
-- What is the average sales amount per customer in each city?

*/


SELECT
    city_name,
    sum(total) AS total_revenue,
    count(DISTINCT sales.customer_id) AS total_customer ,
    (sum(total) / count(DISTINCT sales.customer_id)) AS avg_sales_per_customer
FROM
    sales
    LEFT JOIN customers
    ON sales.customer_id = customers.customer_id
    LEFT JOIN city
    ON customers.city_id = city.city_id
GROUP BY city_name
ORDER BY avg_sales_per_customer DESC;

/*


-- Pune boasts the highest total revenue and the highest average sales per customer, indicating 
   a strong and profitable market.

-- Chennai and Bangalore, known for their large populations and thriving economies,
   generate the most revenue.

-- Jaipur and Delhi have a larger customer base, suggesting a more mass-market approach in
   those cities.



[
  {
    "city_name": "Pune",
    "total_revenue": "1258290",
    "total_customer": "52",
    "avg_sales_per_customer": "24197"
  },
  {
    "city_name": "Chennai",
    "total_revenue": "944120",
    "total_customer": "42",
    "avg_sales_per_customer": "22479"
  },
  {
    "city_name": "Bangalore",
    "total_revenue": "860110",
    "total_customer": "39",
    "avg_sales_per_customer": "22054"
  },
  {
    "city_name": "Jaipur",
    "total_revenue": "803450",
    "total_customer": "69",
    "avg_sales_per_customer": "11644"
  },
  {
    "city_name": "Delhi",
    "total_revenue": "750420",
    "total_customer": "68",
    "avg_sales_per_customer": "11035"
  },
  {
    "city_name": "Mumbai",
    "total_revenue": "235000",
    "total_customer": "27",
    "avg_sales_per_customer": "8703"
  },
  {
    "city_name": "Indore",
    "total_revenue": "138590",
    "total_customer": "21",
    "avg_sales_per_customer": "6599"
  },
  {
    "city_name": "Surat",
    "total_revenue": "176540",
    "total_customer": "27",
    "avg_sales_per_customer": "6538"
  },
  {
    "city_name": "Hyderabad",
    "total_revenue": "131520",
    "total_customer": "21",
    "avg_sales_per_customer": "6262"
  },
  {
    "city_name": "Kolkata",
    "total_revenue": "171460",
    "total_customer": "28",
    "avg_sales_per_customer": "6123"
  },
  {
    "city_name": "Kanpur",
    "total_revenue": "213550",
    "total_customer": "35",
    "avg_sales_per_customer": "6101"
  },
  {
    "city_name": "Ahmedabad",
    "total_revenue": "137690",
    "total_customer": "23",
    "avg_sales_per_customer": "5986"
  },
  {
    "city_name": "Nagpur",
    "total_revenue": "140050",
    "total_customer": "24",
    "avg_sales_per_customer": "5835"
  },
  {
    "city_name": "Lucknow",
    "total_revenue": "109400",
    "total_customer": "21",
    "avg_sales_per_customer": "5209"
  }
]

*/
