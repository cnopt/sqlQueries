  SELECT   FORMAT(Transaction_Date, 'MMMM') AS 'month', 
           DAY(Transaction_date) AS 'day', 
           SUM(Debit_Amount) as 'debit_amount'
  FROM     [dbo].[statement-2022-dateformatted]
  WHERE    Debit_Amount IS NOT NULL 
             AND Transaction_Date BETWEEN '2021-01-01' AND '2021-12-31'
  GROUP BY MONTH(Transaction_Date),
           FORMAT(Transaction_Date, 'MMMM'),
           DAY(Transaction_date)
  ORDER BY MONTH(Transaction_Date),
           DAY(Transaction_Date)