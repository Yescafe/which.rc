#!/bin/bash
if [ -L $0 ]
then
    BASE_DIR=`dirname $(readlink $0)`
else
    BASE_DIR=`dirname $0`
fi
basepath=$(cd $BASE_DIR; pwd)
cd $basepath
git add -A
read -p "Enter commit message: " msg
len=${#msg}
if [ $len -ne 0 ]
then
  echo "Commit info: $msg"
  git commit -m "$msg" > /dev/null
else
  echo "Commit info: Auto commit at `date +%x\ %X`"
  git commit -m "Auto commit at `date +%x\ %X`" > /dev/null
fi
git push origin main
