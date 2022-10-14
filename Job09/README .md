
# Job09

The script "accesrights" is based on a .csv file Create automaticly the users of this tab

"deleteaccessright" Delete all the user created previously, based on the backup for a great fonctionnement even if the user cahnge the .csv file

"modifytest" is the srcipt called by crontab to test every 10 min if the .csv has been changed and load "accessrights" if its true

*/10 * * * * /Path/To/Your/File/Shell.exe/Job09/modifytest.sh 


