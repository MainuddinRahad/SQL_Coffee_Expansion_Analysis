
/*

-- Total Revenue from Coffee Sales
-- What is the total revenue generated from coffee sales across all cities in the last quarter of 2023?

*/

SELECT
    city_name,
    sum(total) AS total_revenue
FROM
    sales
    LEFT JOIN customers
    ON sales.customer_id = customers.customer_id
    LEFT JOIN city
    ON customers.city_id = city.city_id
WHERE
    EXTRACT(YEAR FROM sale_date) = 2023
    AND EXTRACT(quarter FROM sale_date) = 4
GROUP BY city_name
ORDER BY total_revenue DESC;

/*

Here's the breakdown of  the top revenue-generating cities for the last quarter of 2023. 

- Pune leads with a substantial revenue of 434,330.

- followed by Chennai (302,500) and Bangalore (270,780). Jaipur and Delhi complete the top five. 

- This indicates a strong coffee market presence in these cities, likely driven by factors like a growing urban population, increasing disposable income, and a flourishing cafe culture.


[
  {
    "city_name": "Pune",
    "total_revenue": "434330"
  },
  {
    "city_name": "Chennai",
    "total_revenue": "302500"
  },
  {
    "city_name": "Bangalore",
    "total_revenue": "270780"
  },
  {
    "city_name": "Jaipur",
    "total_revenue": "248580"
  },
  {
    "city_name": "Delhi",
    "total_revenue": "238490"
  },
  {
    "city_name": "Kanpur",
    "total_revenue": "71890"
  },
  {
    "city_name": "Mumbai",
    "total_revenue": "71340"
  },
  {
    "city_name": "Surat",
    "total_revenue": "52560"
  },
  {
    "city_name": "Kolkata",
    "total_revenue": "51180"
  },
  {
    "city_name": "Nagpur",
    "total_revenue": "45810"
  },
  {
    "city_name": "Indore",
    "total_revenue": "45670"
  },
  {
    "city_name": "Hyderabad",
    "total_revenue": "45060"
  },
  {
    "city_name": "Ahmedabad",
    "total_revenue": "43560"
  },
  {
    "city_name": "Lucknow",
    "total_revenue": "41550"
  }
]


*/


