#!/bin/bash
function all {

  #reqip=$(ip a | awk '/enp0s3/{print $2}' | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}')
reqip=$(ip a | awk '/enp0s3/{print $2}' | grep -v enp0s3)
nmap -sP $reqip
}

function target {
  netstat -tlpn | grep -i listen # checking for opened TCP ports
}

function explain { #information about options of the script
txt=(
  '  --all/-a - checks for available hosts
  --target/-t - displays currently opened TCP ports'
  )
  echo "$txt"
}
if [ "$#" == 0 ]
then
explain
exit 1
fi
#Better do it using "case"
case $1 in
  --all | -a)
  all ;;
  --target | -t)
  target ;;
*)
explain ; exit 1 ;;
esac
