SELECT SUBSTR(InvoiceDate, 1, 4) AS Year, SUM(Total) AS TotalSales
FROM Invoice
WHERE SUBSTR(InvoiceDate, 1, 4) IN ('2009', '2011')
GROUP BY SUBSTR(InvoiceDate, 1, 4)
