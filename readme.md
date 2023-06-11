# Rey Arthur - Gestion du matéreil du SSCM
## Module 164 - 11.06.2023

Le projet est fait : pour l'interface (HTML, FLASK, Python, etc.) et avec une Base de Donnée MySql.

Il s'agit de la base de données contenant le matériel informatique du SSCM et de relier celui-ci aux personnes à qui appartient le matériel.

Soit un système CRUD (Create Read Update Delete) adapté aux besoin sur les 4 tables de la BD du SSCM : Soit “t_personnes”; “t_matéreil”; "t_personne_avoir_matériel". 

## Avertissement
N'ayant pas réussi les uptades dans les deux fichier, le delete de la table matéreil ne fonctionne pas, il faudra donc supprimer manuelement sur la BD.

# Quels sont les prérequis pour faire fonctionner mon projet ?

Un serveur MySql doit être installé

* LARAGON (heidi.sql) ou XAMPP ou UWAMP
* MAC : MAMP ou https://www.codeur.com/tuto/creation-de-site-internet/version-mysql/

Python doit être installé.

* ATTENTION : Cocher la case pour que le “PATH” intègre le programme Python
* Une fois la “case à cocher” du PATH cochée, il faut choisir d’installer
* Un peu avant la fin du processus d’installation, cliquer sur “disabled length limit” et cliquer sur “CLOSE”
* Le test de Python se fait après avec le programme “PyCharm”

Installer “GIT”
* https://gitforwindows.org/
* Le test de “GIT” se fait dans le programme “PyCharm”

## Configuration de PyCharm
* Il faut installer “PyCharm” (community) et utiliser la même version IDE pour faire fonctionner le projet.
* Lors de l’installation, il faut cocher toutes les options ASSOCIATIONS, ADD PATH, etc
* Ouvrir “PyCharm” pour la première fois pour le configurer. Choisir le bouton “New Project”
* Changer le répertoire pour ce nouveau projet, il faut créer un nouveau répertoire “vide” sur votre disque en local.
* Il est important d’avoir sélectionné le répertoire que vous venez de créer car “PyCharm” va automatiquement créer un environnement virtuel (venv) dans ce répertoire
* Menu : File->Settings->Editor->General->Auto Import (rubrique Python) cocher “Show auto-import tooltip”

## PyCharm vient d’ouvrir une fenêtre avec le contenu du “main.py” pour configurer les actions “UNDO” et “REDO”

* Sélectionner tout le texte avec “CTRL-A” puis “CTRL-X” (Couper), puis “CTL-Z” (UNDO) et faites un REDO “CTRL-Y” et “PyCharm” va vous demander de choisir l’action du “CTRL-Y” raccourci pour faire un “REDO”. 

# Guide pour faire fonctionner le projet
## Démarrer le serveur MySql (laragon)

* Dans “PyCharm”, importer MA BD à partir du fichier DUMP
* Ouvrir le fichier APP_FILM_164/database/1_ImportationDumpSql.py
* Cliquer avec le bouton droit sur l’onglet de ce fichier et choisir “run” (CTRL-MAJ-F10)

## En cas d’erreurs /!\ 

* Ouvrir le fichier .env à la racine du projet, contrôler les indications de connexion pour la bd.

## Test simple de la connexion à la BD

* Ouvrir le fichier APP_FILM_164/database/2_test_connection_bd.py
* Cliquer avec le bouton droit sur l’onglet de ce fichier et choisir “run” (CTRL-MAJ-F10)

## Démarrer le microframework FLASK

* Dans le répertoire racine du projet, ouvrir le fichier run_mon_app.py
* Cliquer avec le bouton droit sur l’onglet de ce fichier et choisir “run” (CTRL-MAJ-F10)
* Dans la console du “run” il doit y avoir un lien à cliquer de cette forme :
  * Running on http://127.0.0.1:5005
* Cliquer dessus afin d'ouvrir dans votre navigateur mon projet

# Vous voici sur le visuel de mon projet final !
