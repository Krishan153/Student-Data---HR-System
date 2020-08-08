#!/bin/bash

myfile="./student_data"


while :
  do
  clear
  echo
  echo "      Student Information Reporting Menu"
  echo "      ==================================="
  echo
  echo "      Sort by:"
  echo "      L - Last Name"
  echo "      P - Program"
  echo "      C - Credits"
  echo "      Any - ID"
  echo
  read -p "     Enter your choice: " choice

  case $choice in
    ["lL"]) ./functions l
           ;;
    ["pP"]) ./functions p
           ;;
    ["cC"]) ./functions c
           ;;
         *) ./functions a
           ;;
  esac
  read -p "     Press ENTER to continue..."
  exit
done
