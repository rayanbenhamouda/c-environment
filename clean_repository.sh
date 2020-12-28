#! /bin/bash


if test -e fichier.txt;
then
	LIST=`cat fichier.txt`
	LIST_RM=`echo $LIST`
	echo "liste des fichiers à supprimer : $LIST_RM"
	rm $LIST_RM fichier.txt
	exit 0
else
	echo "erreur, absence de fichier creer par build_program.sh"
	exit 1
fi


