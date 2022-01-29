--1. List all customers who live in Texas (use JOINs)
--SELECT first_name, last_name
--FROM customer
--JOIN address ON customer.address_id = address.address_id
--WHERE address.district = 'Texas';

--2. Get all payments above 6.99 with the Customer's Full Name
--SELECT first_name, last_name, amount
--FROM customer
--JOIN payment ON customer.customer_id = payment.customer_id
--WHERE amount > 6.99;

--3. Show all customers name who have made payments over 175 (use subqueries)
-- SELECT first_name, last_name
-- FROM customer
-- WHERE customer_id IN (
    --SELECT customer_id 
    --FROM payment 
    --GROUP BY customer_id 
    --HAVING SUM(amount) >= 175
    --ORDER BY SUM(amount);

--4. List all customers that live in Nepal (use the city table)
--country id for nepal 66 birgunj city id is 81
--SELECT first_name, last_name
--FROM customer
--JOIN address ON customer.address_id = address.address_id
--WHERE city_id = '81';

--5. Which staff member had the most transactions?
-- SELECT staff_id, COUNT(staff_id)
-- FROM rental
-- GROUP BY staff_id;

--6. How many movies of each rating are there?
-- SELECT COUNT(film_id), rating
-- FROM film
-- GROUP BY rating;

--7. Show all customers who have made a single payment above 6.99 (use subqueries)
-- SELECT first_name, last_name
-- FROM customer
-- WHERE customer_id IN (
--     SELECT customer_id
--     FROM payment 
--     WHERE amount > 6.99
--     ORDER BY amount
-- );

--8. How many free rentals did our stores give away?
-- SELECT COUNT(amount)
-- FROM payment
-- WHERE amount = 0;