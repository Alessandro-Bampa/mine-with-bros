@echo off

rem Questo file batch esegue il push dei file del server Minecraft su GitHub quando il server viene spento e aggiorna i file locali con l'ultima versione quando il server viene avviato.

rem Update the repository with the server down
if "%1" == "push" (

rem Push files to the GitHub repository.
git add .
git commit -m " %DATE% %TIME% Sync server file"
git push

) else (

rem Update local files with the latest version from the GitHub repository.
git pull
java -jar .\minecraft_server.1.20.4.jar --nogui
)
