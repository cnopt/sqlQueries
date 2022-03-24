SELECT Transaction_Description as 'desc', Transaction_Date as 'date', Debit_Amount as 'amount'
FROM [dbo].[statement-2022-dateformatted] 
WHERE Transaction_Date BETWEEN '2014-01-01' AND '2023-12-31'
    AND Transaction_Description LIKE '%TESCO%'
    AND Transaction_Description NOT LIKE '%BANK%'
    AND Transaction_Description NOT LIKE '%INSURANCE%'
AND Debit_Amount IS NOT NULL
ORDER BY Debit_Amount DESC
-- ORDER BY Transaction_Date