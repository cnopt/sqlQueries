SELECT Transaction_Description as 'desc', SUM(Debit_Amount) as 'amount'
FROM [dbo].[statement-2022-dateformatted] 
WHERE Transaction_Date BETWEEN '2014-01-01' AND '2023-12-31'
AND Transaction_Description LIKE '%PAYPAL%'
AND Debit_Amount IS NOT NULL
GROUP BY Transaction_Description
ORDER BY 'desc' ASC