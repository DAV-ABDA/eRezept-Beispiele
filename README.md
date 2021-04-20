## FHIR-Beispiele zum E-Rezept (Stand 20.04.2021)

In diesem Projekt stellt der DAV Beispiele für die bei der Verarbeitung von E-Rezepten auftretenden Dateien in der Apotheke und dem Apothekenrechenzentrum zur Verfügung. Es wurde darauf geachtet, dass die zu einem Beispiel gehörenden Dateien fachlich und technisch zusammenpassen und soweit wie möglich realistische Informationen enthalten.

Hinweise:
- Für die Erstellung des Beispiels PZN-Verordnung Nr. 1, wurde die Referenzimplementierung (https://github.com/gematik/ref-eRp-FD-Server) Release 0.14.0 genutzt. Da dieses Release noch keine Quittungssignatur liefert und das Schlüsselmaterial eigenständig erzeugt wurde, wird im Kontext des Beispiels vorerst auf Signaturen verzichtet.
- Die Abrechnungsdaten zum Beispiel PZN-Verordnung Nr. 1 werden kurzfristig bereitgestellt.


Der folgende Workflow wird betrachtet:

![workflow.png](workflow.png)

Zu jedem Beispiel werden folgende Dateien zur Verfügung gestellt:

**A) Verordnung**

Als Verordnungen wurden von der KBV im Projekt [https://simplifier.net/eRezept](https://simplifier.net/eRezept) veröffentlichte Beispiele genutzt. Für die Verwendung in den vorliegenden Beispiel-Verordnungs\_Bundles mussten die Verordnungen in einzelnen Feldern passend zum Task auf dem E-Rezept-Fachdienst geändert werden (insbesondere Rezept-ID, Ausstellungsdatum). 

**B) Medication Dispense**

Die Medication Dispense wird in der Apotheke aus Daten der Verordnung bzw. der Abgabedaten erzeugt und um Telematik-ID (aus der SMC-B) und Verfalldatum (aus den securpharm-Daten) ergänzt. Beim Abruf der Quittung muss die Medication Dispense an den E-Rezept-Fachdienst übergeben werden.

In den Beispielen wurde die Medication Dispense vom DAV erstellt.

**C) Quittung des E-Rezept-Fachdienstes**

Die Quittung wurde durch den E-Rezept-Fachdienst (Referenzimplementierung) erstellt.

Hinweis: Die fehlende Signatur und Profilfehler (Validator) sind bekannt und stehen im Backlog der gematik.

**D) Abgabedaten**

Die Abgabedaten wurden vom DAV erstellt.

**E) Abrechnungsdaten und TA7-Daten**

Die Abrechnungsdaten und TA7-Daten wurden fachlich von NOVENTI Health SE bereitgestellt und technisch von der gevko GmbH in FHIR-Dateien umgesetzt.

**Ergänzende Informationen zu den einzelnen Beispielen**

**1) PZN-Verordnung Nr. 1**

Die Verordnung basiert auf KBV-Beispiel 281a985c-f25b-4aae-91a6-41ad744080b0 (GKV). Neben den unter A) beschriebenen technisch bedingten Anpassungen wurde die Packungsgröße auf N3 geändert.

Merkmal Abgabedaten: Erfüllung Rabattvertrag



Weitere Beispiele folgen.


