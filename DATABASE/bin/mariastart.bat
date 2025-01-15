@echo off
setlocal

:: This script requires the following files from the mariadb-11.6.2-winx64.zip community package (from MariaDB 11.2.2):
:: mariastart.bat # this is the script you are currently looking at.
:: mysql.exe
:: mysqld.exe
:: mysqld_multi.pl # This file is optional and controls the MariaDB instance.
:: mysql_install_db.exe
:: server.dll
:: server.lib
:: Create a directory called DATABASE and a subdirectory called bin and copy the 7 files into this directory.
:: The data directory is automatically created in the DATABASE directory when mariastart.bat is started for the first time and contains the files required for operation and all databases.

:: Dieses Skript benötigt aus dem mariadb-11.6.2-winx64.zip Comunity Paket (ab MariaDB 11.2.2) folgende Dateien: 
:: mariastart.bat # dies ist das Skript was du gerade vor augen hast.
:: mysql.exe
:: mysqld.exe
:: mysqld_multi.pl # Diese Datei ist optional und steuert die MariaDB Instanz.
:: mysql_install_db.exe
:: server.dll
:: server.lib
:: Erstelle ein Verzeichnis namens DATABASE und ein unteverzeichnis namens bin und kopiere die 7 Dateien in dieses Verzeichnis.
:: Das Verzeichnis data wird automatisch beim ersten start von mariastart.bat im Verzeichnis DATABASE erstellt und enthält die für den Betrieb erforderlichen Dateien und alle Datenbanken.

:: Ce script nécessite les fichiers suivants du package communautaire mariadb-11.6.2-winx64.zip (de MariaDB 11.2.2) :
:: mariastart.bat # c'est le script que vous avez sous les yeux.
:: mysql.exe
:: mysqld.exe
:: mysqld_multi.pl # Ce fichier est facultatif et contrôle l'instance MariaDB.
:: mysql_install_db.exe
:: serveur.dll
:: server.lib
:: Créez un répertoire appelé DATABASE et un sous-répertoire appelé bin et copiez les 7 fichiers dans ce répertoire.
:: Le répertoire de données est automatiquement créé lors du premier démarrage de mariastart.bat dans le répertoire DATABASE et contient les fichiers nécessaires au fonctionnement et toutes les bases de données.

:: Este script requiere los siguientes archivos del paquete comunitario mariadb-11.6.2-winx64.zip (de MariaDB 11.2.2):
:: mariastart.bat # este es el script que tienes frente a tus ojos.
:: mysql.exe
:: mysqld.exe
:: mysqld_multi.pl # Este archivo es opcional y controla la instancia de MariaDB.
:: mysql_install_db.exe
:: servidor.dll
:: servidor.lib
:: Cree un directorio llamado DATABASE y un subdirectorio llamado bin y copie los 7 archivos en este directorio.
:: El directorio de datos se crea automáticamente cuando mariastart.bat se inicia por primera vez en el directorio DATABASE y contiene los archivos necesarios para la operación y todas las bases de datos.

:: Überprüfen, ob MariaDB installiert ist (Prüfung auf Existenz des Datenverzeichnisses)
if exist "../data" (
    echo MariaDB ist bereits installiert.
) else (
    echo Installiere MariaDB...
    mysql_install_db.exe --datadir=../data --service=opensim --password=opensim
    if %errorlevel% neq 0 (
        echo Fehler bei der Installation von MariaDB.
        exit /b %errorlevel%
    )
    echo MariaDB Installation abgeschlossen.
)

:: Schritt 2: MariaDB starten
start "MariaDB Server" mysqld.exe --console --skip-grant-tables
if %errorlevel% neq 0 (
    echo Fehler beim Starten von MariaDB.
    exit /b %errorlevel%
)

echo MariaDB Server gestartet.

:: Warten, um sicherzustellen, dass der Server bereit ist
timeout /t 10 > nul

:: Schritt 3: Datenbanken erstellen (nur wenn das Verzeichnis ../data existiert)
if not exist "../data" (
    echo Datenverzeichnis fehlt, Datenbanken werden nicht erstellt.
    exit /b 1
)

:: Benutzerdaten und Passwort festlegen
set DB_USER=opensim
set DB_PASS=opensim

if "%1"=="no-create-db" (
    echo Datenbankerstellung übersprungen.
) else (
    echo Erstelle Datenbanken...
    for %%D in (mysql opensim web robust money sim1 sim2 sim3 sim4 sim5 sim6 sim7 sim8 sim9 sim10 diva simonastick) do (
        echo Erstelle Datenbank %%D...
        mysql -u %DB_USER% -p%DB_PASS% -e "CREATE DATABASE %%D;"
        if %errorlevel% neq 0 (
            echo Fehler beim Erstellen der Datenbank %%D.
            exit /b %errorlevel%
        )
    )
    echo Alle Datenbanken wurden erfolgreich erstellt.
)

endlocal
exit /b 0
