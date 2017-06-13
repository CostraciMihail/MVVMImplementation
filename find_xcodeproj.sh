#!/bin/bash
#IFS stands for "internal field separator".
#It is used by the shell to determine how to do word splitting, i. e. how to recognize word boundaries.
#IFS=$'\n'   #internal field separator


#find .xcodeproj or .xcworkspace file in current dirrectory
PROJ_FILE=()
PROJ_FILE=(`find . -type d -name "*.xcodeproj" -maxdepth 1 -print`)
#echo "array --- " $PROJ_FILE

#printf "PROJ_FILE[0]: ${PROJ_FILE[0]}   " 

for file in "${PROJ_FILE[@]}"
do : 
	printf "\n found: ${file} \n"
	#printf "PROJ_FILE[0]: ${PROJ_FILE[0]} " 
done

size=${#PROJ_FILE[0]}
echo "size: $size" 

if [ ${#PROJ_FILE[0]} != 0 ]; then
	printf " \n PROJ_FILE[0]: ${PROJ_FILE[0]} \n" 

else
	exit 1
fi