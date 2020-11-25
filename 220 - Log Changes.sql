INSERT INTO
  ChangeLog ( 
    School, 
    Activity, 
    Hostkey, 
    Deleted,
    New,
    ChangedDay,
    ChangedTime,
    ChangedWeeks,
    ChangedDuration,
    ChangedRoom,
    QueryDate )
SELECT 
  [210 - Aggregate Changes].School, 
  [210 - Aggregate Changes].Activity, 
  [210 - Aggregate Changes].Hostkey, 
  Sum([210 - Aggregate Changes].Deleted) AS SumOfDeleted, 
  Sum([210 - Aggregate Changes].New) AS SumOfNew,
  Sum([210 - Aggregate Changes].ChangedDay) AS SumOfChangedDay,
  Sum([210 - Aggregate Changes].ChangedTime) AS SumOfChangedTime,
  Sum([210 - Aggregate Changes].ChangedWeeks) AS SumOfChangedWeeks,
  Sum([210 - Aggregate Changes].ChangedDuration) AS SumOfChangedDuration,
  Sum([210 - Aggregate Changes].ChangedRoom) AS SumOfChangedRoom,
  [210 - Aggregate Changes].QueryDate
FROM 
  [210 - Aggregate Changes]
GROUP BY
  [210 - Aggregate Changes].School,
  [210 - Aggregate Changes].Activity,
  [210 - Aggregate Changes].Hostkey,
  [210 - Aggregate Changes].QueryDate;
