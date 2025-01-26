

/*

-- Top - 10 Best selling products to their quantity..

-- Sales Count for Each Product
-- How many units of each coffee product have been sold?

*/


SELECT
    product_name,
    count(sale_id) AS quantity_sold
FROM
    sales
    LEFT JOIN products
    ON sales.product_id = products.product_id
GROUP BY
    product_name
ORDER BY quantity_sold DESC
LIMIT 10;


/*


[
  {
    "product_name": "Cold Brew Coffee Pack (6 Bottles)",
    "quantity_sold": "1326"
  },
  {
    "product_name": "Ground Espresso Coffee (250g)",
    "quantity_sold": "1271"
  },
  {
    "product_name": "Instant Coffee Powder (100g)",
    "quantity_sold": "1226"
  },
  {
    "product_name": "Coffee Beans (500g)",
    "quantity_sold": "1218"
  },
  {
    "product_name": "Tote Bag with Coffee Design",
    "quantity_sold": "776"
  },
  {
    "product_name": "Vanilla Coffee Syrup (250ml)",
    "quantity_sold": "762"
  },
  {
    "product_name": "Cold Brew Concentrate (500ml)",
    "quantity_sold": "312"
  },
  {
    "product_name": "Organic Green Coffee Beans (500g)",
    "quantity_sold": "307"
  },
  {
    "product_name": "Coffee Art Print",
    "quantity_sold": "296"
  },
  {
    "product_name": "Flavored Coffee Pods (Pack of 10)",
    "quantity_sold": "295"
  }
]


*/