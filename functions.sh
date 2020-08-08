#!/bin/bash
myfile="./student_data"

sort_program () {
  format_text 4
}
sort_lastname () {
  format_text 2
}
sort_credits () {
  format_text 5
}
sort_id () {
  format_text 1
}
format_text () {
  sort -k "$1" $myfile | column -t -s":"
  echo
  # use wc to count the lines in the file, awk to get the first value of wc output
  total_lines=$(wc -l $myfile | awk '{ print $1 }')
  # save numb of lines in a var called total_lines
  echo
  echo "The total number of records: $total_lines"
  echo
}
clear
echo "      Student Program Information"
echo "      =============================="
echo
# write header
echo -e "Student_Id\tLast_name\tFirst_name\tCredits\t\tProgram"

echo

# evaluate the arg recived and call the func in consecuense
if [ $1 = "p" ]; then
  sort_program
elif [ $1 = "l" ]; then
  sort_lastname
elif [ $1 = "c" ]; then
  sort_credits
else
  sort_id
fi
~                                                                                                                
~                                             