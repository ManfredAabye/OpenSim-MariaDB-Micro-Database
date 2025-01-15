# mariadbstart


## MariaDB 11.6.2 Setup und start Automatisieren

Das Skript `mariastart.bat` automatisiert die Installation, das Starten und die Einrichtung von MariaDB. Es überprüft, ob das Verzeichnis `data` oder die vordefinierten Datenbanken fehlen, installiert bei Bedarf MariaDB und startet anschließend den Server.

## Funktionen
- **Installationsprüfung:** Erkennt automatisch, ob MariaDB installiert ist, indem das Verzeichnis `data` überprüft wird.
- **Serverstart:** Startet den MariaDB-Server automatisch, wenn er noch nicht läuft. Überprüft vor dem Start, ob der Server bereits aktiv ist.
- **Datenbankerstellung:** Erstellt vordefinierte Datenbanken, falls diese noch nicht existieren.
- Der **Benutzername** und das **Passwort** ist genauso gesetzt wie in der Konfiguration von OpenSim und Robust voreingetragen sind. Es sollte also sofort funktionieren, wenn von SQLite auf MySQL umgestellt wurde.

## Verwendung
### Voraussetzungen
- Die Installationsdateien von MariaDB müssen sich im Verzeichnis `DATABASE/bin` befinden. Dort sollte sich auch das Skript `mariastart.bat` befinden.
- Der Benutzer benötigt ausreichende Berechtigungen, um das Skript auszuführen und auf MariaDB-Befehle zuzugreifen.

### Ausführen des Skripts
1. Speichern Sie das Skript in einer `.bat`-Datei (z. B. `mariastart.bat`).
2. Öffnen Sie eine Eingabeaufforderung mit Administratorrechten.
3. Führen Sie das Skript aus:
   ```shell
   mariastart.bat
   ```

## Ablauf des Skripts
1. **Installationsprüfung**:
   - Überprüft, ob das Verzeichnis `../data` existiert.
   - Falls `data` fehlt, wird `mysql_install_db.exe` ausgeführt, um MariaDB zu initialisieren.
   - Stellt sicher, dass alle vordefinierten Datenbanken erstellt werden.
2. **Serverstart**:
   - Erkennt, ob der MariaDB-Server bereits läuft, indem es prüft, ob ein MariaDB-Prozess aktiv ist.
   - Falls nicht, startet das Skript den MariaDB-Server mit `mysqld.exe`.
   - Wartet, um sicherzustellen, dass der Server bereit ist.
3. **Datenbankerstellung**:
   - Erstellt die folgenden Datenbanken, falls sie noch nicht existieren:
     - `mysql`
     - `opensim`
     - `web`
     - `robust`
     - `money`
     - `sim1` bis `sim10`
     - `diva`
     - `simonastick`

### Fehlerbehandlung
- Falls die Installation oder der Serverstart fehlschlägt, beendet das Skript die Ausführung mit einem Fehlercode.
- Wenn das `data`-Verzeichnis fehlt, wird die Installation automatisch durchgeführt.
- Vor der Erstellung prüft das Skript, ob die Datenbanken bereits existieren.

## Anpassung
- Ändern Sie die Variablen `DB_USER` und `DB_PASS`, um Ihre eigenen MariaDB-Anmeldedaten zu verwenden.
- Fügen Sie Datenbanknamen in der Schleife hinzu oder entfernen Sie diese, um die Liste der zu erstellenden Datenbanken anzupassen.

## Hinweise
- Stellen Sie sicher, dass die Dateien `mysql_install_db.exe` und `mysqld.exe` im Verzeichnis `DATABASE/bin` zugänglich sind.
- Das Skript erkennt automatisch, ob der MariaDB-Server läuft, bevor es versucht, ihn zu starten.
- Es prüft den Serverstatus und wartet nur, bis der Server tatsächlich bereit ist.

## Lizenz
Dieses Skript verwendet MariaDB, das unter den Bedingungen der GNU General Public License (GPL) Version 2 lizenziert ist. Eine Kopie der Lizenz gibt es hier: https://mariadb.com/kb/en/licensing-faq/

GNU General Public License (GPL) Version 2

MariaDB wird ohne jegliche Garantie bereitgestellt. 

Dieses Skript wird ohne Gewähr bereitgestellt. Nutzung auf eigene Gefahr.
```

