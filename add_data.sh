#!/bin/bash

myfile="./student_data"
# regext to detect if var is numeric
re='^[0-9]+$'


save_student (){

  # if not studentid is numeric, error
  if ! [[ $studentid =~ $re ]]; then
    echo "      ID is not numeric"
    return
  fi
    # if not credits is numeric, error
  if ! [[ $credits =~ $re ]]; then
    echo "      Credits is not numeric"
    return
  fi

  # cut the file. separator : the first word, and grep the student id
  student_exist=$(cut -d ":" -f1-1 $myfile | grep -w $studentid)
  # if the cut previous is empty, echo the values to the file student_data
  if [ -z "$student_exist" ];then
    echo "$studentid:$lastname:$firstname:$program:$credits" >> $myfile
  else
    # if not, report
    echo "      This ID is already in the file."
  fi


}

while :
  do
  clear
  echo
  echo "            Add New Student Record"
  echo "      ==================================="
  echo
  read -p "     Student ID:  " studentid
  read -p "     Last Name:   " lastname
  read -p "     First Name:  " firstname
  read -p "     Program:     " program
  read -p "     Credits:     " credits
  echo
  choice="1"
  read -p "     Save New Student: Y/N: " choice
  case $choice in
       ["yY"]) save_student
             ;;
      ["nN"]) exit
             ;;
        *) echo "     Error input"
   esac

   while :
     do
      read -p "     Add another? (y)es or (q)uit: " choice
      if [[ $choice = "q" ]]; then
        exit
      elif [[ $choice = "y" ]]; then
        break
      fi
    done

done
