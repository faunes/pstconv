#! /bin/bash

# Convertit toutes les archives PST qui sont renseignées comme paramètre et enregistre le résultat dans un dossier portant le même nom que l'archive.

mkdir converted_$(echo $1)

readpst -e -b -D -t e -o converted_$(echo $1) $1

find converted_$(echo $1) -type d -empty -exec rmdir {} \;
