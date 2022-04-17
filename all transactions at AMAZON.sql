SELECT *
FROM ( SELECT TOP 10 Transaction_Description as 'desc',
              Transaction_Date as 'date',
              Debit_Amount
       FROM  [dbo].[statement-2022-dateformatted] 
       WHERE Transaction_Date BETWEEN '2014-01-01' AND '2023-12-31'
            AND Debit_Amount IS NOT NULL
            AND Transaction_Description LIKE '%AMAZON%'
            OR Transaction_Description LIKE '%AMZN'
            ORDER BY Debit_Amount DESC )
AS a

UNION ALL

SELECT 'Total', NULL, SUM(Debit_Amount)
FROM ( SELECT TOP 10 Transaction_Description as 'desc',
              Transaction_Date as 'date',
              Debit_Amount
       FROM  [dbo].[statement-2022-dateformatted] 
       WHERE Transaction_Date BETWEEN '2014-01-01' AND '2023-12-31'
            AND Debit_Amount IS NOT NULL
            AND Transaction_Description LIKE '%AMAZON%'
            OR Transaction_Description LIKE '%AMZN'
            ORDER BY Debit_Amount DESC)
AS b 