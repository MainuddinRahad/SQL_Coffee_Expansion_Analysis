

/*

How many people in each city are estimated to consume coffee, given that 25% of the population does?

-- Find out the top 5 cities..

*/


SELECT
    city_name,
    round(((population * 0.25)/1000000) , 2) AS coffee_consumers_in_millions
FROM
    city
ORDER BY population DESC
LIMIT 5;

/*

The provided data reveals coffee consumption trends across five major Indian cities. 

- Delhi emerges as the largest coffee market with 7.75 million consumers.
- Mumbai emerges as the second largest coffee market with (5.10 million).
- Kolkata (3.73 million), 
- Bangalore (3.08 million)
- Chennai (2.78 million).

[
  {
    "city_name": "Delhi",
    "coffee_consumers_in_millions": "7.75"
  },
  {
    "city_name": "Mumbai",
    "coffee_consumers_in_millions": "5.10"
  },
  {
    "city_name": "Kolkata",
    "coffee_consumers_in_millions": "3.73"
  },
  {
    "city_name": "Bangalore",
    "coffee_consumers_in_millions": "3.08"
  },
  {
    "city_name": "Chennai",
    "coffee_consumers_in_millions": "2.78"
  }
]

*/