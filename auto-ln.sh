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
for f in `ls -a | grep rc | grep -v zsh`; do
  echo "Remove ~/$f and rebuild"
  mv ~/$f $basepath/bak-$timestamp > /dev/null
  ln -s $basepath/$f ~/$f > /dev/null
done

while true; do
  read -p "Use oh-my-zsh? (y/N): " omz
  echo "Remove ~/.zshrc and rebuild"
  mv ~/.zshrc $basepath/bak-$timestamp > /dev/null
  case $omz in
    [yY]*) ln -s $basepath/.omzshrc ~/.zshrc > /dev/null; break;;
    [nN]*) ln -s $basepath/.zshrc   ~/.zshrc > /dev/null; break;;
    * ) echo "Please answer y or n.";;
  esac
done

echo "Backups at $basepath/bak-$timestamp"
