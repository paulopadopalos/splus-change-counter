SELECT
  temp.School,
  temp.Activity, 
  temp.HostKey,
  temp.Day,
  temp.Start,
  temp.DurationInMinutes,
  temp.WeekPattern,
  ConcatRelated("Location","[temp]","[Hostkey] = """ & [Hostkey] & """","Location") AS Locations
INTO
  CurrentTimetable
FROM
  temp;
