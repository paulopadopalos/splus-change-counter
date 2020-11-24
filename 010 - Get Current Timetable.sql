SELECT rdowner_V_DEPARTMENT.Name AS School, 
	rdowner_V_ACTIVITY.Name AS Activity,
	rdowner_V_ACTIVITY.HostKey,
	rdowner_V_REFDAY.DBDayName AS [Day],
	Format([ScheduledStartTime],"Short Time") AS Start,
	rdowner_V_ACTIVITY.DurationInMinutes,
	rdowner_V_ACTIVITY.WeekPattern,
	rdowner_V_LOCATION.Name AS Location,
	rdowner_V_DEPARTMENT.Name AS Landlord
INTO
	temp
FROM
	((((((rdowner_V_ACTIVITY
	INNER JOIN
		rdowner_V_ACTIVITY_MODULE
		ON
			rdowner_V_ACTIVITY.Id = rdowner_V_ACTIVITY_MODULE.ActivityId)
			INNER JOIN
				rdowner_V_MODULE ON rdowner_V_ACTIVITY_MODULE.ModuleId = rdowner_V_MODULE.Id)
				LEFT JOIN
					rdowner_V_ACTIVITY_LOCATION ON rdowner_V_ACTIVITY.Id = rdowner_V_ACTIVITY_LOCATION.ActivityId)
					LEFT JOIN
						rdowner_V_LOCATION ON rdowner_V_ACTIVITY_LOCATION.LocationId = rdowner_V_LOCATION.Id)
						LEFT JOIN
							rdowner_V_DEPARTMENT ON rdowner_V_LOCATION.DepartmentId = rdowner_V_DEPARTMENT.Id)
							INNER JOIN
								rdowner_V_DEPARTMENT AS rdowner_V_DEPARTMENT ON rdowner_V_ACTIVITY.DepartmentId = rdowner_V_DEPARTMENT.Id)
								LEFT JOIN
									rdowner_V_REFDAY ON rdowner_V_ACTIVITY.ScheduledDay = rdowner_V_REFDAY.ActivityDay
GROUP BY
	rdowner_V_DEPARTMENT.Name,
	rdowner_V_ACTIVITY.Name,
	rdowner_V_ACTIVITY.HostKey,
	rdowner_V_REFDAY.DBDayName,
	Format([ScheduledStartTime],"Short Time"),
	rdowner_V_ACTIVITY.DurationInMinutes,
	rdowner_V_ACTIVITY.WeekPattern,
	rdowner_V_LOCATION.Name,
	rdowner_V_DEPARTMENT.Name;
