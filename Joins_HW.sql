-- 1
SELECT first_name, last_name, district
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
WHERE district='Texas';

-- 2
SELECT first_name, last_name, amount
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE amount > 6.99;

-- 3
SELECT first_name, last_name, SUM(payment.amount)
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id
HAVING SUM(amount) > 80;

-- 4
SELECT first_name, last_name, country
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
INNER JOIN city
ON address.city_id = city.city_id
INNER JOIN country
ON city.country_id = country.country_id
WHERE country='Nepal';

-- 5
SELECT first_name, last_name, COUNT(payment.staff_id)
FROM staff
INNER JOIN payment
ON staff.staff_id = payment.staff_id
GROUP BY staff.staff_id
ORDER BY count DESC
LIMIT(1);

-- 6
SELECT film.rating,COUNT(film.rating)
FROM film
GROUP BY film.rating;

-- 7
SELECT first_name, last_name, SUM(amount)
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id=75
GROUP BY customer.customer_id;

-- 8
SELECT COUNT(payment_id)
FROM payment
WHERE amount = 0;