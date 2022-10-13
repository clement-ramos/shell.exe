#Documentation du Job08#

#Consigne de ce job#
Maintenant que vous connaissez les boucles, vous devez utiliser les Cron pour
permettre d’exécuter ce script toutes les heures.
Ce script aura pour but d’extraire de vos logs Linux le nombre de connexions à votre
session qui ont eu lieu sur votre ordinateur. Ce nombre sera écrit dans un fichier qui se
nommera number_connection-Date où Date sera remplacé par la date de création de
votre fichier avec l’heure sous le format jj-mm-aaaa-HH:MM.
Par la suite, ce fichier devra être archivé avec tar et déplacé dans un sous-dossier
appelé Backup.
Votre fichier script devra se nommer get_logs.sh
Votre arborescence sera donc Job8 → Backup → number_connection-Date

#Note:#
for this script you have to download and configure crontab with "crontab -e",where u have to input this line:
* */1 * * * /Path/To/YourFile/Shell_exe/Job08/get_logs.sh 


