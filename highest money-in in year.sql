/* have to use a gay subquery if you want more fields when using MAX() */
SELECT TOP 1 Transaction_Description, Credit_Amount
  FROM [dbo].[statement-2022-dateformatted]
  WHERE Credit_Amount = (SELECT MAX(Credit_Amount)
                          FROM [dbo].[statement-2022-dateformatted]
                          WHERE Credit_Amount IS NOT NULL 
                          AND Transaction_Date BETWEEN '2020-01-01' AND '2020-12-31')