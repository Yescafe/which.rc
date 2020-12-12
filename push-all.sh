#!/bin/bash
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
