# MariaDB Portable Installation Script

## Overview

This script automates the installation and startup of MariaDB, including the creation of essential databases. It requires specific files from the `mariadb-11.6.2-winx64.zip` community package.

## Requirements

The following files are required from the `mariadb-11.6.2-winx64.zip` community package (from MariaDB 11.2.2):
- `mariastart.bat` (this script)
- `mysql.exe`
- `mysqld.exe`
- `mysqld_multi.pl` (optional, controls the MariaDB instance)
- `mysql_install_db.exe`
- `server.dll`
- `server.lib`

Create a directory named `DATABASE` and a subdirectory named `bin`, then copy these 7 files into the `bin` directory. The `data` directory is automatically created in the `DATABASE` directory when `mariastart.bat` is started for the first time. This directory contains the files required for operation and all databases.

## Instructions

1. Ensure the necessary files are in place as described above.
2. Run `mariastart.bat` to install MariaDB if it is not already installed, start the MariaDB server, and create the required databases.

## Script Functionality

### Step 1: Check Installation
- Checks if the `data` directory exists.
- If not, creates the `data` directory and installs MariaDB.

### Step 2: Start MariaDB
- Starts the MariaDB server.
- Waits to ensure the server is ready.

### Step 3: Create Databases
- Creates databases `mysql`, `opensim`, `web`, `robust`, `money`, `sim1`, `sim2`, `sim3`, `sim4`, `sim5`, `sim6`, `sim7`, `sim8`, `sim9`, `sim10` if they do not exist.

---

# MariaDB Tragbares Installationsskript

## Überblick

Dieses Skript automatisiert die Installation und den Start von MariaDB, einschließlich der Erstellung wichtiger Datenbanken. Es erfordert bestimmte Dateien aus dem `mariadb-11.6.2-winx64.zip` Community-Paket.

## Anforderungen

Folgende Dateien werden aus dem `mariadb-11.6.2-winx64.zip` Community-Paket (ab MariaDB 11.2.2) benötigt:
- `mariastart.bat` (dieses Skript)
- `mysql.exe`
- `mysqld.exe`
- `mysqld_multi.pl` (optional, steuert die MariaDB-Instanz)
- `mysql_install_db.exe`
- `server.dll`
- `server.lib`

Erstelle ein Verzeichnis namens `DATABASE` und ein Unterverzeichnis namens `bin`, und kopiere diese 7 Dateien in das `bin`-Verzeichnis. Das Verzeichnis `data` wird automatisch im `DATABASE`-Verzeichnis erstellt, wenn `mariastart.bat` zum ersten Mal gestartet wird. Dieses Verzeichnis enthält die für den Betrieb erforderlichen Dateien und alle Datenbanken.

## Anweisungen

1. Stelle sicher, dass die notwendigen Dateien wie oben beschrieben vorhanden sind.
2. Führe `mariastart.bat` aus, um MariaDB zu installieren, falls es noch nicht installiert ist, den MariaDB-Server zu starten und die erforderlichen Datenbanken zu erstellen.

## Skript-Funktionalität

### Schritt 1: Installation überprüfen
- Überprüft, ob das Verzeichnis `data` existiert.
- Falls nicht, erstellt das Verzeichnis `data` und installiert MariaDB.

### Schritt 2: MariaDB starten
- Startet den MariaDB-Server.
- Wartet, um sicherzustellen, dass der Server bereit ist.

### Schritt 3: Datenbanken erstellen
- Erstellt die Datenbanken `mysql`, `opensim`, `web`, `robust`, `money`, `sim1`, `sim2`, `sim3`, `sim4`, `sim5`, `sim6`, `sim7`, `sim8`, `sim9`, `sim10`, falls sie nicht existieren.

---

# Script d'installation portable de MariaDB

## Aperçu

Ce script automatise l'installation et le démarrage de MariaDB, y compris la création de bases de données essentielles. Il nécessite des fichiers spécifiques du package communautaire `mariadb-11.6.2-winx64.zip`.

## Exigences

Les fichiers suivants sont nécessaires du package communautaire `mariadb-11.6.2-winx64.zip` (à partir de MariaDB 11.2.2):
- `mariastart.bat` (ce script)
- `mysql.exe`
- `mysqld.exe`
- `mysqld_multi.pl` (optionnel, contrôle l'instance MariaDB)
- `mysql_install_db.exe`
- `serveur.dll`
- `serveur.lib`

Créez un répertoire nommé `DATABASE` et un sous-répertoire nommé `bin`, puis copiez ces 7 fichiers dans le répertoire `bin`. Le répertoire `data` est automatiquement créé dans le répertoire `DATABASE` lorsque `mariastart.bat` est démarré pour la première fois. Ce répertoire contient les fichiers nécessaires au fonctionnement et toutes les bases de données.

## Instructions

1. Assurez-vous que les fichiers nécessaires sont en place comme décrit ci-dessus.
2. Exécutez `mariastart.bat` pour installer MariaDB s'il n'est pas déjà installé, démarrer le serveur MariaDB et créer les bases de données nécessaires.

## Fonctionnalité du Script

### Étape 1: Vérification de l'installation
- Vérifie si le répertoire `data` existe.
- Sinon, crée le répertoire `data` et installe MariaDB.

### Étape 2: Démarrer MariaDB
- Démarre le serveur MariaDB.
- Attends pour s'assurer que le serveur est prêt.

### Étape 3: Créer des bases de données
- Crée les bases de données `mysql`, `opensim`, `web`, `robust`, `money`, `sim1`, `sim2`, `sim3`, `sim4`, `sim5`, `sim6`, `sim7`, `sim8`, `sim9`, `sim10` si elles n'existent pas.

---

# Script de instalación portátil de MariaDB

## Descripción general

Este script automatiza la instalación y el inicio de MariaDB, incluida la creación de bases de datos esenciales. Requiere archivos específicos del paquete comunitario `mariadb-11.6.2-winx64.zip`.

## Requisitos

Se requieren los siguientes archivos del paquete comunitario `mariadb-11.6.2-winx64.zip` (desde MariaDB 11.2.2):
- `mariastart.bat` (este script)
- `mysql.exe`
- `mysqld.exe`
- `mysqld_multi.pl` (opcional, controla la instancia de MariaDB)
- `mysql_install_db.exe`
- `servidor.dll`
- `servidor.lib`

Cree un directorio llamado `DATABASE` y un subdirectorio llamado `bin`, luego copie estos 7 archivos en el directorio `bin`. El directorio `data` se crea automáticamente en el directorio `DATABASE` cuando `mariastart.bat` se inicia por primera vez. Este directorio contiene los archivos necesarios para la operación y todas las bases de datos.

## Instrucciones

1. Asegúrese de que los archivos necesarios estén en su lugar como se describió anteriormente.
2. Ejecute `mariastart.bat` para instalar MariaDB si aún no está instalado, iniciar el servidor MariaDB y crear las bases de datos necesarias.

## Funcionalidad del Script

### Paso 1: Verificación de la instalación
- Verifica si el directorio `data` existe.
- Si no, crea el directorio `data` e instala MariaDB.

### Paso 2: Iniciar MariaDB
- Inicia el servidor MariaDB.
- Espera para asegurarse de que el servidor esté listo.

### Paso 3: Crear bases de datos
- Crea las bases de datos `mysql`, `opensim`, `web`, `robust`, `money`, `sim1`, `sim2`, `sim3`, `sim4`, `sim5`, `sim6`, `sim7`, `sim8`, `sim9`, `sim10` si no existen.
