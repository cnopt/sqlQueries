SELECT     YEAR(Transaction_Date) as 'year',
           FORMAT(AVG(Balance), 'C', 'en-GB') as 'avg_bal',
           FORMAT(MIN(Balance), 'C', 'en-GB') as 'min_bal',
           FORMAT(MAX(Balance), 'C', 'en-GB') as 'max_bal'
  FROM [dbo].[statement-2022-dateformatted] 
  WHERE Transaction_Date BETWEEN '2010-01-01' AND '2050-12-31'
  GROUP BY YEAR(Transaction_Date)
  ORDER BY YEAR(Transaction_Date)