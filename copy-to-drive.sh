#!/bin/bash

echo "Do you want to select file from: "

echo "1. Desktop or 2. Absolute Path"

read option

function from_desktop(){
 
 echo "Please enter source directory: "

 read source

 echo "Please enter target directory: "

 read target

 if [ -d ~/Desktop/$source ]; then
    if [ -d /media/murtaza/$target ]; then 
         cp -a ~/Desktop/$source /media/murtaza/$target
    else
         echo "Target doesn't exist"
    fi
 else
   echo "Source not available"
 fi

}

from_absolute_path() {
 
 echo "Please enter source directory: "

 read source

 echo "Please enter target directory: "

 read target

 if [ -d $source ]; then
    if [ -d /media/murtaza/$target ]; then 
         cp -a $source /media/murtaza/$target
    else
         echo "Target doesn't exist"
    fi
 else
   echo "Source not available"
 fi

}

if [ "$option" == "1" ]; then
    from_desktop
elif [ "$option" == "2" ]; then
    from_absolute_path
else 
    echo "Invalid Option"
fi


