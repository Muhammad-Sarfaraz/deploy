#!/bin/sh

# Author : Sarfaraz

# Color
green=$'\e[1;32m'
white=$'\e[0m'

# Script Goes Here....
echo $'\n'
echo $white"What do you like ? [pull/push/prod]"$white
read INPUT

if [[ $INPUT == "pull" || $INPUT == "Pull" || $INPUT == "PULL" ]]; 
then

    git pull origin main

    echo $'\n'
    echo $green"# Pull origin main success."$green

elif [[ $INPUT == "push" || $INPUT == "Push" || $INPUT == "PUSH" ]]; 
then

    echo $'\n'
    echo $green"# Enter Your Commit:"$white

    read COMMIT

    git add --all

    git commit -m ${COMMIT}

    echo $'\n'
    echo $green"# Enter Your Branch Name:" $white

    read BRANCH

    echo $'\n'
    git checkout -b ${BRANCH}

    echo $'\n'
    echo $green"# Branch created successfully." $white

    echo $'\n'
    git push origin ${BRANCH}

    echo $'\n'
    echo  $green"# Successfully pushed to branch [ ${BRANCH} ]" $white

    echo $'\n'
    echo  $white"# Now please open a new pull request and uddhar koro amk" $white
else
     echo $'\n'
     echo $white"You entered an invalid input. $INPUT" $white
fi
