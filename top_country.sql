SELECT BillingCountry AS Country, SUM(Total) AS TotalSpent
FROM Invoice
WHERE Total = (SELECT MAX(Total)
FROM (SELECT SUM(Total) AS Total
FROM Invoice
GROUP BY BillingCountry) AS subquery)
GROUP BY Country
