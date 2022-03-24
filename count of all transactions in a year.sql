SELECT YEAR(Transaction_Date) as 'year', 
       COUNT(Debit_Amount) as 'debits'
  FROM [dbo].[statement-2022-dateformatted]
  WHERE Debit_Amount IS NOT NULL 
  AND Transaction_Date BETWEEN '2010-01-01' AND '2050-12-31'
  GROUP BY YEAR(Transaction_Date)
  ORDER BY YEAR(Transaction_Date)