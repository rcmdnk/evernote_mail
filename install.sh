#!/bin/sh
prefix=/test
scripts=(https://raw.github.com/rcmdnk/evernote_mail/master/bin/evernote_mail)


if [ $# -ne 0 ];then
  prefix=`echo $1|sed 's|--prefix=||'|sed "s|^~|$HOME|"|sed "s|^\.|$(pwd)|"`
  flag=0
  if ! echo "$1"| grep -q "\-\-prefix=";then
    flag=1
  elif [ "$prefix" = "" ];then
    flag=2
  fi
  if [ $flag -ne 0 ];then
    printf "\e[31;2mWrong arguments:\n\e[m" 1>&2
    printf "\e[31;2m  $@\n\e[m" 1>&2
    echo 1>&2
    echo "Use \"$0 --prefix=/your/destination/\"" 1>&2
    exit $flag
  fi
fi
echo
echo "######################"
echo "Install to $prefix/bin"
echo "######################"
echo
sudo=""
if [ -d $prefix/bin ];then
  touch $prefix/bin/.install.test >& /dev/null
  if [ $? -ne 0 ];then
    sudo=sudo
  else
    rm -f $prefix/bin/.install.test
  fi
else
  mkdir -p $prefix/bin>&  /dev/null
  if [ $? -ne 0 ];then
    sudo mkdir -p $prefix/bin
    sudo=sudo
  fi
fi

for s in ${scripts[@]};do
  sname=`basename $s`
  $sudo curl -fsSL -o $prefix/bin/$sname $s
done
