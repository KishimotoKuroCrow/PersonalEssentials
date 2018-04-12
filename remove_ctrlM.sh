#!/bin/bash

# Function to remove the actual Ctrl-M metacharacter
function RemoveMetaChar
{
   # Uses stream editor to remove the metacharacter
   # into a new temp file and then copy it back
   sed -e "s///" ${1} > ${1}.new

   #Assign the executable permission if needed
   if [ -x ${1} ]; then
      chmod +x ${1}.new
   fi

   # Replace the old file
   mv ${1}.new ${1}
}

# Verify the number of arguments
if [ $# -eq 0 ]; then
   echo $0: usage : remove_ctrlM.sh file1 file2 ... file_n
   exit 1
fi

# Loop through all the files
for f in "$@"
do
   if [ -f ${f}]; then
      RemoveMetaChar ${f}
   fi
done
