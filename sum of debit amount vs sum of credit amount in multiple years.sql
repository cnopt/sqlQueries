SELECT YEAR(Transaction_Date) as 'year', SUM(Debit_Amount) as 'debit', SUM(Credit_Amount) as 'credit', ABS(SUM(Debit_Amount) - SUM(Credit_Amount)) as 'diff'
FROM [dbo].[statement-2022-dateformatted] 
WHERE Transaction_Date BETWEEN '2014-01-01' AND '2025-12-31'
GROUP BY YEAR(Transaction_Date)
ORDER BY YEAR(Transaction_Date)