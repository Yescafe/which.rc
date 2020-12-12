#!/bin/bash
if [ -L $0 ]
then
    BASE_DIR=`dirname $(readlink $0)`
else
    BASE_DIR=`dirname $0`
fi
basepath=$(cd $BASE_DIR; pwd)
echo auto-ln.sh at $basepath
for f in `ls -a | grep rc`; do
  echo "Remove ~/$f and rebuild"
  rm -f ~/$f > /dev/null
  ln -s $basepath/$f ~/$f > /dev/null
done

