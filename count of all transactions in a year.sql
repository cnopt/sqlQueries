SELECT YEAR(Transaction_Date) as 'year', 
       COUNT(Debit_Amount) as 'count'
  FROM [dbo].[statement-2022-dateformatted]
  WHERE Debit_Amount IS NOT NULL 
  AND Transaction_Date BETWEEN '2020-01-01' AND '2020-12-31'
  GROUP BY YEAR(Transaction_Date)