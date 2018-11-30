#!/bin/bash
src=/home/testuser/mycode
dest=/tmp/mycode
remotedest=/home/testuser/remotecode
archfile=/tmp/mycode.tar.gz
echo "archiving $src directory"
tar -cvzf  $dest.tar.gz $src 
echo "creating $remotedst on remote machine"
ssh testuser@remote.test.com   mkdir -p $remotedest
echo "coping $archivefile into remote machine"
scp $archivefile testuser@remote.test.com:$remotedest
echo "Now checking cksum here"
ssh testuser@remote.test.com cksum $remotedest
echo "moving archived file into /user/node/data directory"
ssh testuser@remote.test.com mv  $remotedest /usr/node/data
echo "Unarchiving archived file"
ssh testuser@remote.test.com  tar -xvzf  /user/node/data/mycode.tar.gz


