#!/bin/bash


while :
  do
  clear
  echo
  echo "      Student Information Reporting Menu"
  echo "      ==================================="
  echo
  echo "      1 - View Records"
  echo "      2 - Add New Records"
  echo "      3 - Search for Records"
  echo "      4 - Delete Records"
  echo "      5 - Quit"
  echo
  read -p "     Enter your choice: " choice
  echo
  echo "      I certify that this submission is my own original work"
  echo "      Krishan Roy - R01845251"
  case $choice in
       1) ./view_data
             ;;
       2) ./add_data
             ;;
       3) ./search_data
               ;;
       4) ./delete_data
           ;;
       5) exit
           ;;
       *) echo "     Invalid Option"
          sleep 1
  esac



done
