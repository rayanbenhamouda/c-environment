#! /bin/bash

#  echo $?  exit nom respect de la sintaxe


if test -z "$2"
then
	echo "erreur syntaxe !";
	exit 1
fi





if test -e "$1"
then
	if test -e "$2";
	then
		echo "le fichier 2 existe deja dans votre repertoire";
		exit 1
	else
		echo "le fichier 2 n'existe pas , c'est parfait";
		gcc "$1" -o "$2"
		exit 0 
	fi

else
	echo "fichier introuvable...";
	exit 1
fi
