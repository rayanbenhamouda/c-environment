#! /bin/bash

#  echo $?  exit non respect de la syntaxe



if test -z "$2"; then
	echo -e "erreur nombre d'argument: manque un nom de fichier en argument 1 et/ou le nom du programme a généré en argument 2 \nexemple:./build_program.sh file1 file2"
	exit 1
fi





if test -e "$1"; then
	if test -e "$2"; then
		echo "le fichier $2 existe deja dans votre repertoire"
		read -p "on continue (o/n) ?" RES
		if [ ${RES} = "o" ]; then
			gcc "$1" -o "$2"
			echo "$2" >> fichier.txt
			exit 0
		elif [ ${RES} = "n" ]; then
			echo "dossier non remplacée"
       		        exit 0
		else
			echo "erreur syntaxe"
			exit 1
		fi
						
		
	else
		echo "le fichier $2 n'existe pas , c'est parfait"
		gcc "$1" -o "$2"
		echo "$2" >> fichier.txt
		exit 0

	fi

else
	echo "fichier introuvable..."
	exit 1
fi
#--------------------------------------------------------------------
#echo -n        affiche a la ligne
#			echo "lololololo";
#                        echo "$2" >> fichier.txt;
#                       exit 0;
