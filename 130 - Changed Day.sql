SELECT
  CurrentTimetable.School,
  CurrentTimetable.Activity,
  CurrentTimetable.HostKey,
  CurrentTimetable.Day,
  CurrentTimetable.Start,
  CurrentTimetable.DurationInMinutes,
  CurrentTimetable.WeekPattern,
  CurrentTimetable.Locations,
  ArchivedTimetable.Day AS OldValue,
  CurrentTimetable.Day AS NewValue,
  0 AS Deleted,
  0 AS New,
  1 AS Days,
  0 AS [Time],
  0 AS Weeks,
  0 AS Duration,
  0 AS Room
FROM
  CurrentTimetable 
  INNER JOIN 
    ArchivedTimetable ON CurrentTimetable.HostKey = ArchivedTimetable.HostKey
WHERE
  CurrentTimetable.Day<>[ArchivedTimetable]![Day];
