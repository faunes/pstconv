#! /bin/bash

# Extrait les contacts d'une archive pst et les convertit en vcf.


mkdir cont_$(echo $1) && cd cont_$(echo $1)

echo "Je bosse pour toi mon gars, un peu de patience."

readpst -e -D -cv -t c -o . ../$1 > log_$(echo $1)
find . -type d -empty -exec rmdir {} \; 2>> log_$(echo $1)

echo "Terminé !"

exit
