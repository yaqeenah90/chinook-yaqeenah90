SELECT BillingCountry AS Country, SUM(Total) AS TotalSales
FROM Invoice
GROUP BY Country
