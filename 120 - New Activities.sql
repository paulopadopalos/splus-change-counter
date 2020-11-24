SELECT
  CurrentTimetable.School,
  CurrentTimetable.Activity,
  CurrentTimetable.HostKey,
  CurrentTimetable.Day,
  CurrentTimetable.Start,
  CurrentTimetable.DurationInMinutes,
  CurrentTimetable.WeekPattern,
  CurrentTimetable.Locations,
  "Didn't Exist" AS OldValue,
  "New Activity" AS NewValue,
  0 AS Deleted,
  1 AS New,
  0 AS Days,
  0 AS [Time],
  0 AS Weeks,
  0 AS Duration,
  0 AS Room
FROM
  CurrentTimetable
  LEFT JOIN ArchivedTimetable ON CurrentTimetable.HostKey = ArchivedTimetable.HostKey
WHERE
  ArchivedTimetable.HostKey Is Null;
