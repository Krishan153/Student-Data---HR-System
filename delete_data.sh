#!/bin/bash

myfile="./student_data"

clear
echo
echo "                Delete menu"
echo "      ==================================="
echo
read -p "     Enter pattern to delete: " pattern

# grep the patter in the file
result=$(grep $pattern $myfile)
# if result (the previous ) is empty, no records found
if [ -z "$result" ];then
  echo "      No records found"
  exit
else
  # print the resulst of the grep, and order with columns
  echo "      $result" | column -t -s":"
  echo
  #print ask the user if want to delete
  read -p "     Want to delete these records? (y)es or (n)o: " choice
  case $choice in
    # if yes, use sed to remove the line that star twith the pattern
       ["y"]) sed -i "/^$pattern/ d" $myfile
             ;;
      ["n"]) exit
             ;;
        *) echo "     Error input"
   esac

fi

echo
read -p "     Press ENTER to continue..."
exit
