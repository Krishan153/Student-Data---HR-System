#!/bin/bash

myfile="./student_data"

search_student (){
  echo
  result=$(grep $1 $myfile)
  if [ -z "$result" ];then
    echo "      No records found"
  else
    echo "      $result" | column -t -s":"
  fi



}


clear
echo
echo "                Search menu"
echo "      ==================================="
echo
read -p "     Enter pattern to search: " pattern


search_student $pattern
echo
read -p "     Press ENTER to continue..."
exit

