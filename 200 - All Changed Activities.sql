SELECT [110 - Deleted Activities].[School], 
		[110 - Deleted Activities].[Activity],
		[110 - Deleted Activities].[Hostkey], 
		[110 - Deleted Activities].[OldValue], 
		[110 - Deleted Activities].[NewValue], 
		[110 - Deleted Activities].[Deleted], 
		[110 - Deleted Activities].[New], 
		[110 - Deleted Activities].[Days], 
		[110 - Deleted Activities].[Time], 
		[110 - Deleted Activities].[Weeks], 
		[110 - Deleted Activities].[Duration], 
		[110 - Deleted Activities].[Room]
FROM [110 - Deleted Activities]
UNION SELECT [120 - New Activities].[School], 
		[120 - New Activities].[Activity],
		[120 - New Activities].[Hostkey], 
		[120 - New Activities].[OldValue], 
		[120 - New Activities].[NewValue], 
		[120 - New Activities].[Deleted], 
		[120 - New Activities].[New], 
		[120 - New Activities].[Days], 
		[120 - New Activities].[Time], 
		[120 - New Activities].[Weeks], 
		[120 - New Activities].[Duration], 
		[120 - New Activities].[Room]
FROM [120 - New Activities]
UNION SELECT [130 - Changed Day].[School], 
		[130 - Changed Day].[Activity],
		[130 - Changed Day].[Hostkey], 
		[130 - Changed Day].[OldValue], 
		[130 - Changed Day].[NewValue], 
		[130 - Changed Day].[Deleted], 
		[130 - Changed Day].[New], 
		[130 - Changed Day].[Days], 
		[130 - Changed Day].[Time], 
		[130 - Changed Day].[Weeks], 
		[130 - Changed Day].[Duration], 
		[130 - Changed Day].[Room]
FROM [130 - Changed Day]
UNION SELECT [140 - Changed Time].[School], 
		[140 - Changed Time].[Activity],
		[140 - Changed Time].[Hostkey], 
		[140 - Changed Time].[OldValue], 
		[140 - Changed Time].[NewValue], 
		[140 - Changed Time].[Deleted], 
		[140 - Changed Time].[New], 
		[140 - Changed Time].[Days], 
		[140 - Changed Time].[Time], 
		[140 - Changed Time].[Weeks], 
		[140 - Changed Time].[Duration], 
		[140 - Changed Time].[Room]
FROM [140 - Changed Time]
UNION SELECT [150 - Changed Weeks].[School], 
		[150 - Changed Weeks].[Activity],
		[150 - Changed Weeks].[Hostkey], 
		[150 - Changed Weeks].[OldValue], 
		[150 - Changed Weeks].[NewValue], 
		[150 - Changed Weeks].[Deleted], 
		[150 - Changed Weeks].[New], 
		[150 - Changed Weeks].[Days], 
		[150 - Changed Weeks].[Time], 
		[150 - Changed Weeks].[Weeks], 
		[150 - Changed Weeks].[Duration], 
		[150 - Changed Weeks].[Room]
FROM [150 - Changed Weeks]
UNION SELECT [160 - Changed Duration].[School], 
		[160 - Changed Duration].[Activity],
		[160 - Changed Duration].[Hostkey], 
		[160 - Changed Duration].[OldValue], 
		[160 - Changed Duration].[NewValue], 
		[160 - Changed Duration].[Deleted], 
		[160 - Changed Duration].[New], 
		[160 - Changed Duration].[Days], 
		[160 - Changed Duration].[Time], 
		[160 - Changed Duration].[Weeks], 
		[160 - Changed Duration].[Duration], 
		[160 - Changed Duration].[Room]
FROM [160 - Changed Duration]
UNION SELECT [170 - Changed Locations].[School], 
		[170 - Changed Locations].[Activity],
		[170 - Changed Locations].[Hostkey], 
		[170 - Changed Locations].[OldValue], 
		[170 - Changed Locations].[NewValue], 
		[170 - Changed Locations].[Deleted], 
		[170 - Changed Locations].[New], 
		[170 - Changed Locations].[Days], 
		[170 - Changed Locations].[Time], 
		[170 - Changed Locations].[Weeks], 
		[170 - Changed Locations].[Duration], 
		[170 - Changed Locations].[Room]
FROM [170 - Changed Locations]
ORDER BY Activity;