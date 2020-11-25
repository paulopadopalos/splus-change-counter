# splus-change-counter
A series of queries for counting timetable changes in a Scientia Syllabus+ Reporting Database

# Introduction
Scientia Syllabus+ is a timetabling system used by many universities worldwide. The system has a reporting database (RDB) which contains the _current_ state of the timetable. The lack of a history or audit trail in the RDB makes it difficult to report on what changes have been made to the timetable.

This repository includes a series of SQL queries which, when performed in the right sequence, allow an institution to count the number and type of changes being made in their timetable. These examples were developed to be used in a Microsoft Access database with an ODBC connection to the RDB, but they should be easily converted to other systems.

You will probably need to talk to your insitution's IT support for Syllabus+ to get this working - for example, to set up an ODBC connection to the reporting database from your PC.

# How it Works
The principle is fairly simple - the query takes a snapshot of the current timetable from the RDB, then compares it to the last snapshot it took and looks for differences between them. The results are then appended to a results table, providing a cummulative list of all the changes found by the tool. The SQL queries are numbered to make it clear what order they should be run in.

A few notes about the way changes are logged:
* Each change is counted separately. So if an activity has changed room _and_ changed time, this will be counted as two changes.
* We don't count everything - for example, we don't count changes to activity names or which students are attending tutorials.
* If an activity is changed once and then changed back between snapshots, you won't spot this change since the data is the same in each snapshot. Therefore it is important to run the queries regularly for accurate counting.

**Important note** - Activities scheduled in more than one room are particularly tricky to track for room changes. For this reason, a step in the process is to convert the multiple rows representing this into a single row with all the rooms comma separated in a single cell. There is no native way to do this in Microsoft Access, so the code includes referenced to Allen Browne's ConcatRelated() VBA function which you can find here: http://allenbrowne.com/func-concat.html. 

# In detail
* Query 010 retrieves a copy of the current timetable from the reporting database.
* Query 011 reformats this so that an activity scheduled in multiple rooms is represented on a single row, using the ConcatRelated() function. Please note that if you have a large dataset, this could take a while to run - please be patient! For my dataset it takes about 20 minutes.
* Queries 110 through 170 identify changes between the snapshot just taken and the previous one. Each query looks for something different - e.g. activities which have been deleted, or activities which have changed day. Each query includes a flag for what sort of change it is.
* Query 200 combines the results of queries 110 through 170 into a single table.
* Query 210 sorts the results of query 200 and adds a timestamp.
* Query 220 appends the results of the previous query to the table which contains all changes found to date.
* Query 900 takes the snapshot from Query 010 and archives it, ready for the next time you run the queries.

