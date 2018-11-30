#!/bin/bash
echo "checking status code of http://remote.test.com/status for returns code 200"
a="$(curl -sL -w "%{http_code}\\n" "http://remote.test.com/status" -o /dev/null)"
echo
if [ $a == 200 ]
then 
  echo "successfully returns status code is 200"
else
  echo " returs status code is none 200"
fi

