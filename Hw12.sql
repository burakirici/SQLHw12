-- Question 1
--SELECT COUNT(*) FROM film
--WHERE length > ALL (SELECT AVG(length) FROM film);


-- Question 2

--SELECT COUNT(*) FROM film
--WHERE rental_rate > ANY (SELECT rental_rate FROM film WHERE rental_rate < (SELECT MAX(rental_rate) FROM film));

-- Question 3

--SELECT * FROM film
--WHERE rental_rate = ANY (SELECT MIN(rental_rate) FROM film)
--AND replacement_cost = ANY (SELECT MIN(replacement_cost) FROM film);

-- Question 4 

--SELECT customer_id, COUNT(*) AS num_payments
--FROM payment
--GROUP BY customer_id
--HAVING COUNT(*) >= ANY (
--    SELECT COUNT(*)
--    FROM payment
--    GROUP BY customer_id
--)
--ORDER BY num_payments DESC;





