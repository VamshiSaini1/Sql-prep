# All Essential clauses introduction.

SELECT order_id, sales 
FROM orders;

/* ORDER BY CLAUSE QUERIES*/

SELECT order_id, sales
FROM orders
ORDER BY sales DESC;

SELECT * 
FROM customers
ORDER BY score;

# Nested Sorting.
SELECT * 
FROM customers
ORDER BY country ASC, score DESC;

# Grouping clause
SELECT country, sum(score) AS total_score
FROM customers
GROUP BY country;

# Find the total score and total number of customers for each country.
SELECT country, count(id) AS total_customers, sum(score) AS total_score
FROM customers
GROUP BY country;

# Having Clause -> Used to filter the data after grouping and aggregation

SELECT country, sum(sore)
FROM customers
GROUP BY country
HAVING sum(score) > 800;

 /* Find the average score for each country considering only customers with a score not equal to 0 and return only those countries with
 an average score greater than 430.*/
 
 /* Difference between WHERE and HAVING : Where is used to filter before aggregation. Having is used after aggregation. */
 
 SELECT country, avg(score) AS average_score
 FROM customers
 WHERE score != 0
 GROUP BY country
 HAVING avg(score)>430;

# DISTINCT CLAUSE
 /* Distinct clause is also like a filter that is used to remove duplicates. It is used directly after the SELECT statement */
 
 # Return unique list of all countries.
 
 SELECT DISTINCT country
 FROM customers;