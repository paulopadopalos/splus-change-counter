SELECT
  CurrentTimetable.School,
  CurrentTimetable.Activity,
  CurrentTimetable.HostKey,
  CurrentTimetable.Day,
  CurrentTimetable.Start,
  CurrentTimetable.DurationInMinutes,
  CurrentTimetable.WeekPattern,
  CurrentTimetable.Locations,
  ArchivedTimetable.Locations AS OldValue,
  CurrentTimetable.Locations AS NewValue,
  0 AS Deleted,
  0 AS New,
  0 AS Days,
  0 AS [Time],
  0 AS Weeks,
  0 AS Duration,
  1 AS Room
FROM
  CurrentTimetable INNER JOIN ArchivedTimetable ON CurrentTimetable.HostKey = ArchivedTimetable.HostKey
WHERE
  CurrentTimetable.Locations<>[ArchivedTimetable]![Locations];
