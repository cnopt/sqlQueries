SELECT YEAR(Transaction_Date) as 'year',
       MONTH(Transaction_Date) as 'month_num',
       FORMAT(Transaction_Date, 'MMMM') as 'month_name', 
       FORMAT(AVG(Debit_Amount), 'C', 'en-GB') as 'avg'
  FROM [dbo].[statement-2022-dateformatted] 
  WHERE Transaction_Date BETWEEN '2014-01-01' AND '2023-12-31'
       AND Debit_Amount IS NOT NULL
  GROUP BY YEAR(Transaction_Date),
       MONTH(Transaction_Date),
       FORMAT(Transaction_Date, 'MMMM')
  ORDER BY YEAR(Transaction_Date), 
       MONTH(Transaction_Date)