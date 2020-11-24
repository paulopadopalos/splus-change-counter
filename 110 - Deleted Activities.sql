SELECT
  ArchivedTimetable.School,
  ArchivedTimetable.Activity,
  ArchivedTimetable.HostKey,
  ArchivedTimetable.Day,
  ArchivedTimetable.Start,
  ArchivedTimetable.DurationInMinutes,
  ArchivedTimetable.WeekPattern,
  ArchivedTimetable.Locations,
  "Existed" AS OldValue,
  "Deleted" AS NewValue,
  1 AS Deleted,
  0 AS New,
  0 AS Days,
  0 AS [Time],
  0 AS Weeks,
  0 AS Duration,
  0 AS Room
FROM
  ArchivedTimetable
  LEFT JOIN CurrentTimetable ON ArchivedTimetable.HostKey = CurrentTimetable.HostKey
WHERE
  CurrentTimetable.HostKey Is Null;
