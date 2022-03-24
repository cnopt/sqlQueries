SELECT MONTH(Transaction_Date) AS 'Month', DAY(Transaction_date) AS 'Day', Debit_Amount
  FROM [dbo].[statement-2022-dateformatted]
  WHERE Debit_Amount IS NOT NULL 
  AND Transaction_Date BETWEEN '2021-01-01' AND '2021-12-31'
  ORDER BY Transaction_Date ASC