## Release 1.1.0 - FHIR-Beispiele zum E-Rezept
- Update Profile Versions
- Edit Changes (Binary-Quittung) Profile TA7_Sammelrechnung_Bundle
- Fix Canonical-URL (DAV-PR-ERP-Abgabeinformationen) - eAbgabedaten
- Update eAbgabedaten-StyleSheet (Add Zusatzattribut 15)

## Release 1.0.9 - FHIR-Beispiele zum E-Rezept
- Edit fix Link Verordnung Stylesheet
- Edit MedicationDispense Einheit (amount.numerator.unit)
- Edit delete Vertragskennzeichen (Rezeptur eAbgabedaten)

## Release 1.0.8 - FHIR-Beispiele zum E-Rezept
- Add TA7-Bsp Sammelrechnung pro Kasse (TK) und Dateisplit
- Update TA7 Bsp -> IKs (Empfänger / Kostenträger)
- Move example of Mehrfachverordnungen (FutureCase)
- FIX TA7_Sammelrechnung_Bundle (Bundle.identifier:Dateiname - Dateiart -> FHR statt ABR)
- ADD more Medication Dispense examples

## Release 1.0.7 - FHIR-Beispiele zum E-Rezept
- Update Visualisierungen eAbgabedaten
- Update Stylesheet eAbgabedaten 
- Update "TA7_Sammelrechnung_Bundle-modified" add IDs

## Release 1.0.6 - FHIR-Beispiele zum E-Rezept
- Upgarde PZN_Nr1_TA7 example ProfileVersion -> "|1.0.4"
- Add more "TA7 Sammelrechnung Bundle" examples
- Add Visualisierungen eAbgabedaten
- Add Stylesheet eAbgabedaten

## Release 1.0.5 - FHIR-Beispiele zum E-Rezept
- Upgarde ProfileVersion -> "|1.0.3"
- FIX References ("type\[UUID]" -> "urn:uuid:[UUID]")
- Add more examples

## Release 1.0.4 - FHIR-Beispiele zum E-Rezept
- Fix LänderCode - Organization/address/country (eAbgabedaten)
- Remove meta/tag/display (MedicationDispense)
- Add Verordnungsvisualisierung (html)

Hinweise:
- Für die Erstellung des Beispiels PZN-Verordnung Nr. 1, wurde die Referenzimplementierung (https://github.com/gematik/ref-eRp-FD-Server) Release 0.14.0 genutzt. Da dieses Release noch keine Quittungssignatur liefert und das Schlüsselmaterial eigenständig erzeugt wurde, wird im Kontext des Beispiels vorerst auf Signaturen verzichtet.
- Die fehlende Signatur und Profilfehler (Validator) der Quittung des E-Rezept-Fachdienstes sind bekannt und stehen im Backlog der gematik.


## Release 1.0.3 - FHIR-Beispiele zum E-Rezept
- Fix reference [Bundle] (TA7_Sammelrechnung_Bundle -> GKVSV_PR_TA7_Sammelrechnung_List)

Hinweise:
- Für die Erstellung des Beispiels PZN-Verordnung Nr. 1, wurde die Referenzimplementierung (https://github.com/gematik/ref-eRp-FD-Server) Release 0.14.0 genutzt. Da dieses Release noch keine Quittungssignatur liefert und das Schlüsselmaterial eigenständig erzeugt wurde, wird im Kontext des Beispiels vorerst auf Signaturen verzichtet.
- Die fehlende Signatur und Profilfehler (Validator) der Quittung des E-Rezept-Fachdienstes sind bekannt und stehen im Backlog der gematik.


## Release 1.0.2 - FHIR-Beispiele zum E-Rezept
- rename files (MedicationDispense & TA7_Sammelrechnung_Bundle)
- change datetime of lastUpdated (PZN_Nr1_VerordnungArzt)

Hinweise:
- Für die Erstellung des Beispiels PZN-Verordnung Nr. 1, wurde die Referenzimplementierung (https://github.com/gematik/ref-eRp-FD-Server) Release 0.14.0 genutzt. Da dieses Release noch keine Quittungssignatur liefert und das Schlüsselmaterial eigenständig erzeugt wurde, wird im Kontext des Beispiels vorerst auf Signaturen verzichtet.
- Die fehlende Signatur und Profilfehler (Validator) der Quittung des E-Rezept-Fachdienstes sind bekannt und stehen im Backlog der gematik.

## Release 1.0.1 - FHIR-Beispiele zum E-Rezept

- fix Patient family name (PZN_Nr1_VerordnungArzt)
- add (PZN_Nr1_eAbrechnungsdaten)

Hinweise:
- Für die Erstellung des Beispiels PZN-Verordnung Nr. 1, wurde die Referenzimplementierung (https://github.com/gematik/ref-eRp-FD-Server) Release 0.14.0 genutzt. Da dieses Release noch keine Quittungssignatur liefert und das Schlüsselmaterial eigenständig erzeugt wurde, wird im Kontext des Beispiels vorerst auf Signaturen verzichtet.
- Die fehlende Signatur und Profilfehler (Validator) der Quittung des E-Rezept-Fachdienstes sind bekannt und stehen im Backlog der gematik.

## Release 1.0.0 - FHIR-Beispiele zum E-Rezept 

Basis Release des DAV für die Veröffentlichung von durchgängigen Verarbeitungsdaten von E-Rezept-Beispielen.

Hinweise:
- Für die Erstellung des Beispiels PZN-Verordnung Nr. 1, wurde die Referenzimplementierung (https://github.com/gematik/ref-eRp-FD-Server) Release 0.14.0 genutzt. Da dieses Release noch keine Quittungssignatur liefert und das Schlüsselmaterial eigenständig erzeugt wurde, wird im Kontext des Beispiels vorerst auf Signaturen verzichtet.
- Die fehlende Signatur und Profilfehler (Validator) der Quittung des E-Rezept-Fachdienstes sind bekannt und stehen im Backlog der gematik.
- Die Abrechnungsdaten zum Beispiel PZN-Verordnung Nr. 1 werden kurzfristig bereitgestellt.