#!/bin/bash
user=testuser
dir=/home/testuser/mycode 
echo
echo"Changing ownership for all files on $dir to username $user"
echo
echo "`chown $user:$user $dir/*  -R`"
echo
echo "ownership successesfully changed,`ls -l $dir`"
