# splus-change-counter
A series of queries for counting timetable changes in a Scientia Syllabus+ Reporting Database

# Introduction
Scientia Syllabus+ is a timetabling system used by many universities worldwide. The system has a reporting database (RDB) which contains the _current_ state of the timetable. The lack of a history or audit trail in the RDB makes it difficult to report on what changes have been made to the timetable.

This repository includes a series of SQL queries which, when performed in the right sequence, allow an institution to count the number and type of changes being made in their timetable. These examples were developed to be used in a Microsoft Access database with an ODBC connection to the RDB, but they should be easily converted to other systems.
