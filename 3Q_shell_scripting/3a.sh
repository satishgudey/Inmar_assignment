#!/bin/bash
#enter file or directory: "
a=/home/testuser/mycode
if [ -e $a ]
then
    echo " $a is existing dectory "
    cd $a
    echo "`git init`"
    git clone <git url>
    echo "successfully  checkout done"
  else
    echo " $a is not existing directory and creating $a directory"
    mkdir $a
    cd $a
    echo "`git init`"
    git clone <git url>
    echo "successfully  checkout done"
fi
