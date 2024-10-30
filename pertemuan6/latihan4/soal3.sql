SELECT p.[ProjectName], d.[DepartementsName]
FROM [dbo].[Projects] p
LEFT JOIN [dbo].[Departements] d ON p.DepartementsID = d.DepartementsID;