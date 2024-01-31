@echo off

rem Questo file batch esegue il push dei file del server Minecraft su GitHub quando il server viene spento e aggiorna i file locali con l'ultima versione quando il server viene avviato.

rem Controlla se il server è in esecuzione.
if "%1" == "stop" (

rem Esegue il push dei file sul repository GitHub.
git add .
git commit -m " %datestamp% Sync server file"
git push origin master

) else (

rem Aggiorna i file locali con l'ultima versione dal repository GitHub.
git pull origin master
java -jar .\minecraft_server.1.20.4.jar --nogui
)
