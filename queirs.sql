-- [1]
SELECT DISTINCT orderNumber
FROM orderdetails
WHERE productCode LIKE 'S18%' AND priceEach > 100;

-- [2]
SELECT * 
FROM `payments`
WHERE day(paymentDate) IN(5,6);

-- [3]
SELECT * 
FROM `customers`
WHERE country = 'usa' AND phone LIKE '%5555%'
ORDER BY creditLimit DESC
LIMIT 5;