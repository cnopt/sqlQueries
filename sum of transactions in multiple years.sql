SELECT YEAR(Transaction_Date) as 'year', SUM(Debit_Amount) as 'sum', COUNT(Transaction_Date) as 'payments'
  FROM [dbo].[statement-2022-dateformatted] 
  WHERE Transaction_Date BETWEEN '2014-01-01' AND '2023-12-31'
  AND Debit_Amount IS NOT NULL
  GROUP BY YEAR(Transaction_Date)
  ORDER BY YEAR(Transaction_Date)