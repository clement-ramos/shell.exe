#Documentation du Job09#

#Consigne de ce job#
Créer un script nommé accessrights.sh qui depuis ce fichier CSV, récupère les
informations des utilisateurs et les crée sur votre système.
Si l’utilisateur est un admin., donnez-lui le rôle de super utilisateur de votre système
Pour la suite, utilisez les cron pour permettre au script de se relancer automatiquement
s'il y a un changement dans le fichier CSV. (Pour tester, je vous invite à modifier le fichier
à la main).

#Note:#
First of all you have 3 scripts in this project
the first of them "accessrights" create users based on the .csv file

"delaccessrights" delete them based on a backup for a great fonctionement

the last one "modifytest" is the one who is called by cron to test every 10 min if 
the csv file have been edited, and launch "accessright" if its true.

you have to configure it with crontab -e with this line :
 
*/10 * * * * /Path/to/YourFile/Shell_exe/Job09/modifytest.sh 

