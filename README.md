# MariaDB Micro Portabel

Das Skript `mariadbstart.bat` automatisiert die Installation, das Starten und die Einrichtung von MariaDB. Es überprüft, ob das Verzeichnis `data` oder die vordefinierten Datenbanken fehlen, installiert bei Bedarf MariaDB und startet anschließend den Server.

**Zweck**
Diese Micro-Portabel-Version von MariaDB ist speziell für die Verwendung mit OpenSimulator gedacht. Sie ermöglicht es, eine portable Version von OpenSimulator zu erstellen, die einfach auf verschiedenen Systemen verwendet werden kann, ohne eine vollständige Installation von MariaDB erforderlich zu machen.

**Anwendungen**
- **Sim-on-a-Stick**: Ideal für tragbare Simulationsumgebungen, die auf einem USB-Stick oder anderen tragbaren Speichermedien ausgeführt werden können.
- **Portable Diva-Version**: Unterstützt die Erstellung von portablen Versionen der Diva Distro für OpenSimulator.

**Vorteile**
- **Einfache Bereitstellung**: Keine Notwendigkeit für eine vollständige Installation von MariaDB. Kann direkt von tragbaren Medien gestartet werden.
- **Flexibilität**: Ermöglicht es Benutzern, OpenSimulator auf verschiedenen Systemen ohne großen Aufwand auszuführen.
- **Portabilität**: Perfekt für Entwickler, die OpenSimulator und MariaDB auf verschiedenen Geräten mit sich führen und verwenden möchten.
- 
## Funktionen
- **Installationsprüfung:** Erkennt automatisch, ob MariaDB installiert ist, indem das Verzeichnis `data` überprüft wird.
- **Serverstart:** Startet den MariaDB-Server automatisch, wenn er noch nicht läuft. Überprüft vor dem Start, ob der Server bereits aktiv ist.
- **Dynamisches Warten:** Wartet, bis der Server tatsächlich bereit ist, anstatt eine feste Verzögerung zu verwenden.
- **Datenbankerstellung:** Erstellt vordefinierte Datenbanken, falls diese noch nicht existieren.

## Verwendung
### Voraussetzungen
- Die Installationsdateien von MariaDB müssen sich im Verzeichnis `DATABASE/bin` befinden. Dort sollte sich auch das Skript `mariadbstart.bat` befinden.
- Der Benutzer benötigt ausreichende Berechtigungen, um das Skript auszuführen und auf MariaDB-Befehle zuzugreifen.

### Ausführen des Skripts
1. Speichern Sie das Skript in einer `.bat`-Datei (z. B. `mariadbstart.bat`).
2. Öffnen Sie eine Eingabeaufforderung mit Administratorrechten.
3. Führen Sie das Skript aus:
   ```
   mariadbstart.bat
   ```

## Ablauf des Skripts
1. **Installationsprüfung**:
   - Überprüft, ob das Verzeichnis `../data` existiert.
   - Falls `data` fehlt, wird `mysql_install_db.exe` ausgeführt, um MariaDB zu initialisieren.
   - Stellt sicher, dass alle vordefinierten Datenbanken erstellt werden.
2. **Serverstart**:
   - Erkennt, ob der MariaDB-Server bereits läuft, indem es prüft, ob ein MariaDB-Prozess aktiv ist.
   - Falls nicht, startet das Skript den MariaDB-Server mit `mysqld.exe`.
   - Wartet dynamisch, bis der Server bereit ist, indem es den Status wiederholt prüft.
3. **Datenbankerstellung**:
   - Erstellt die folgenden Datenbanken, falls sie noch nicht existieren:
     - `mysql`
     - `opensim`
     - `web`
     - `robust`
     - `money`
     - `sim1` bis `sim10`

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
- Es prüft den Serverstatus dynamisch und wartet nur, bis der Server tatsächlich bereit ist.

## Lizenz
Dieses Skript verwendet MariaDB, das unter den Bedingungen der GNU General Public License (GPL) Version 2 lizenziert ist. Eine Kopie der Lizenz gibt es hier: https://mariadb.com/kb/en/licensing-faq/

GNU General Public License (GPL) Version 2, MariaDB wird ohne jegliche Garantie bereitgestellt. 

Dieses Skript wird ohne Gewähr bereitgestellt. Nutzung auf eigene Gefahr.

