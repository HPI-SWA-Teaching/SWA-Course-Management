# Course Management System
[![Build Status](https://travis-ci.org/HPI-SWA-Teaching/SWT15-Project-15.svg)](https://travis-ci.org/HPI-SWA-Teaching/SWT15-Project-15)
===================
![screenshot](https://raw.githubusercontent.com/HPI-SWA-Teaching/SWT15-Project-15/master/docs/cms_screenshot.png)
Das Course Management System ist eine Webanwendung, die mit dem web application framework Seaside (Version 3.1.2) entwickelt wurde. 
Es können Lehrveranstaltungen und Benutzer verwaltet, Abgaben für einzelne Benutzer oder Gruppen terminiert, sowie Themen für einzelne Lehrveranstaltungen festgelegt werden.

## Installation
### Vorbereitung
Repo clonen
Download Squeak 4.5

### Seaside im Image installieren
Installation in der Workspace ausführen:
Metacello new
	smalltalkhubUser: 'Seaside' project: 'MetacelloConfigurations';
	configuration: 'Seaside3';
	load: #('WebClient' 'Development' 'Email' 'JQuery' 'JQueryUI' 'REST' 'RSS').
SwaLint hardReset.

Anschließend per Seaside Control Panel einen neuen 'WAWebServerWebAdapter anlegen.
Das Encoding auf UTF-8 stellen und 'WAWebServerWebAdapter starten.

### Sourcen im Image einbinden
Im Monticello Browser neues FileTree Respository hinzufügen.
Anschließend 

### Selenium für UI Tests im Image installieren
im Monticello Browser zum Package Project15-Core neues HTTP-Repository hinzufügen:
```MCHttpRepository
  location: 'http://ss3.gemstone.com/ss/Parasol'
  user: ''
  password: ''

Anschließend Selenium (Version: 2.46) als Standalone downloaden unter: http://www.seleniumhq.org/download/

### Seaside konfigurieren
| application |
(application:= WAAdmin register: self asApplicationAt: 'cms').
application isApplication ifTrue: [
    application preferenceAt: #sessionClass put: CMSSession.
	application preferenceAt: #rootClass put: CMSRootTask]
		
### Nginx Webserver starten
Für das Course Management System wurde Nginx als Webserver eingebunden und kann aus dem Repository gestartet werden.
./SWT15-Project-15/master/nginx-1.9.1

## Erweiterungsmöglichkeiten
Das Course Management System könnte um folgende Features erweitert werden:
- Nutzer zum Verwalten von Themen einer Lehrveranstaltung berechtigen
- Mehrere Abgabeartefakte für einzelne Abgaben definieren
- Abgabeartefakte hochladen
- Abgabeartefakte herunterladen

Die User Stories sind unter dem nachfolgenden Link dokumentiert: https://raw.githubusercontent.com/HPI-SWA-Teaching/SWT15-Project-15/master/docs/userstories.txt
