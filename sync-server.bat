@echo off

rem This batch file pushes the Minecraft server files to GitHub when the server is down and updates the local files with the latest version when the server is starting up.

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
