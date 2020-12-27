#! /bin/bash

#  echo $?  exit nom respect de la sintaxe


echo "test du : $2"

test -z "$2"
echo $?

if test -e "$1"
then
	if test -e "$2";
	then
		echo "le nom choisis existe deja dans votre repertoire";
	else
		echo "le mot n'existe pas , c'est parfais";
		echo $? ;
	fi

else
	echo "fichier introuvable...";
fi
