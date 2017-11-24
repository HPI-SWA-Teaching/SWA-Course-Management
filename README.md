# Course Management System
[![Build Status](https://travis-ci.org/hpi-swa-teaching/SWA-Course-Management.svg)](https://travis-ci.org/hpi-swa-teaching/SWA-Course-Management)
===================
![screenshot](https://raw.githubusercontent.com/hpi-swa-teaching/SWA-Course-Management/master/docs/cms_screenshot.png)
Das Course Management System ist eine Webanwendung, die mit dem web application framework Seaside (Version 3.1.2) entwickelt wurde. 
Es können Lehrveranstaltungen und Benutzer verwaltet, Abgaben für einzelne Benutzer oder Gruppen terminiert, sowie Themen für einzelne Lehrveranstaltungen festgelegt werden.

## Installation
### Vorbereitung
Download Squeak Version 4.5

### Seaside im Image installieren
Installation in der Workspace ausführen:
```Metacello new
	smalltalkhubUser: 'Seaside' project: 'MetacelloConfigurations';
	configuration: 'Seaside3';
	load: #('WebClient' 'Development' 'Email' 'JQuery' 'JQueryUI' 'REST' 'RSS').
SwaLint hardReset ```

Anschließend per Seaside Control Panel einen neuen 'WAWebServerWebAdapter anlegen.
Das Encoding sollte auf 'UTF-8' gesetzt werden, damit Umlaute entsprechend angezeigt werden. Anschließend den WAWebServerAdaptor starten.

### Sourcen im Image einbinden
Im Monticello Browser neues FileTree Respository hinzufügen.
Anschließend die Packages `Project15-Core` und `Project15-Test` laden. 

### Selenium für UI Tests im Image installieren
im Monticello Browser zum Package Project15-Core ein neues HTTP-Repository hinzufügen:
```
MCHttpRepository
  location: 'http://ss3.gemstone.com/ss/Parasol'
  user: ''
  password: ''
```

Anschließend Selenium (Version: 2.46) als Standalone herunterladen unter: http://www.seleniumhq.org/download/ 
und starten.

### Seaside konfigurieren
Seasidekonfiguration in der Workspace ausführen:
```
| application |
(application:= WAAdmin register: self asApplicationAt: 'cms').
application isApplication ifTrue: [
    application preferenceAt: #sessionClass put: CMSSession.
	application preferenceAt: #rootClass put: CMSRootTask]
```
		
### Nginx Webserver starten
Für das Course Management System wurde Nginx als Webserver eingebunden und kann aus dem Repository-Verzeichnis `./SWA-Course-Management/nginx-1.9.1` gestartet werden.
Das Course Management System ist via http://localhost/cms erreichbar.

In der Konfigurationsdatei `./SWA-Course-Management/nginx-1.9.1/nginx.conf` können Host und Port angepasst werden.
```
server {
    listen       80;
    server_name  localhost;
}
```

### Hinweise:
Mit Hilfe der klassen-seitigen Methode initializeTestData können in der Workspace Testdatensätze, wie Benutzer und Lehrveranstaltungen erzeugt werden.
`CMSTestData initializeTestData`

Die Anmeldung mit Adminrechten erfolgt unter dem Usernamen 'Admin'.


## Erweiterungsmöglichkeiten
Das Course Management System könnte um folgende Features erweitert werden:
- Nutzer zum Verwalten von Themen einer Lehrveranstaltung berechtigen
- Mehrere Abgabeartefakte für einzelne Abgaben definieren
- Abgabeartefakte hochladen
- Abgabeartefakte herunterladen

Die User Stories sind unter dem nachfolgenden Link dokumentiert: https://raw.githubusercontent.com/hpi-swa-teaching/SWA-Course-Management/master/docs/userstories.txt
