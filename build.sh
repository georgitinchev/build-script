#!/bin/bash
echo "Welcome to our build script!"

# Get the version from changelog.md
firstline=$(head -n 1 source/changelog.md)
echo $firstline
read -a splitfirstline <<< $firstline
version=${splitfirstline[1]}

# Ask user to continue or exit
read -p "Enter 1 to continue or 0 to exit: " versioncontinue
if [ $versioncontinue -eq 1 ]
then 
  echo "OK"
  # Copy files excluding secretinfo.md
  for filename in source/*
  do
    if [ "$filename" == "source/secretinfo.md" ]
    then 
      echo "Not copying" $filename
    else 
      echo "Copying" $filename
      cp $filename build/
    fi
  done
  # Change to build directory, list files
  cd build/
  echo "Build version $version contains:"
  ls
else 
  echo "Please come back when you are ready"
fi
