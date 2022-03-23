#!/bin/bash
if [ -L $0 ]
then
    BASE_DIR=`dirname $(readlink $0)`
else
    BASE_DIR=`dirname $0`
fi
timestamp=$(date +%s)
basepath=$(cd $BASE_DIR; pwd)

mkdir -p $basepath/bak-$timestamp > /dev/null

echo auto-ln.sh at $basepath
for f in `ls -a | grep rc`; do
  echo "Remove ~/$f and rebuild"
  mv ~/$f $basepath/bak-$timestamp > /dev/null 2> /dev/null
  ln -s $basepath/$f ~/$f > /dev/null
done

echo "Remove ~/.vim and rebuild"
mv ~/.vim $basepath/bak-$timestamp > /dev/null 2> /dev/null
ln -s $basepath/.vim ~/.vim > /dev/null

echo "Backups at $basepath/bak-$timestamp"
