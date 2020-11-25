SELECT
  [200 - All Changed Activities].School,
  [200 - All Changed Activities].Activity,
  [200 - All Changed Activities].Hostkey,
  [200 - All Changed Activities].Deleted AS Deleted,
  [200 - All Changed Activities].New AS New,
  [200 - All Changed Activities].Days AS ChangedDay,
  [200 - All Changed Activities].Time AS ChangedTime,
  [200 - All Changed Activities].Weeks AS ChangedWeeks,
  [200 - All Changed Activities].Duration AS ChangedDuration,
  [200 - All Changed Activities].Room AS ChangedRoom,
  Now() AS QueryDate
FROM
  [200 - All Changed Activities]
ORDER BY
  [200 - All Changed Activities].School,
  [200 - All Changed Activities].Activity,
  [200 - All Changed Activities].Hostkey;
