SELECT e.[Name], p.[ProjectName]
FROM [dbo].[Employee] e
LEFT JOIN [dbo].[Projects] p ON e.DepartementsID = p.DepartementsID;