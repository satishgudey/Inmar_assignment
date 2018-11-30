#!/bin/bash
LOG_LEVEL='/apache/server/logs'
BACKUP_DIR='/tmp/apache_server/logs_backup'
mkdir -p $LOG_LEVEL $BACKUP_DIR 
for a in "`date --date="Apr {27..30} 2015 {00..20}"`"
do
  echo "catalina_out.log $a" >>/apache/backup_files
  for i in `cat /apache/backup_files`
  do
  if [ -f $LOG_LEVEL/$i ]
  then
    echo "Coping $i to logs_backup directory"
    cp $LOG_LEVEL/$i  $BACKUP_DIR
  else
    echo "$i log file does not exist,skipping."
  fi
  done
done
echo "Redirecting the outpu into text.txt and Zipping log files"
ls -l  $BACKUP_DIR >text.txt

tar -cvzf /tmp/apache_server/logs_backup.tar.gz /tmp/apache_server/logs_backup
echo
echo
echo "Backup completed successfully"
