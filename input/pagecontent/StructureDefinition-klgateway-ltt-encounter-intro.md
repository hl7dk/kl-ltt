## Scope and usage
This model is used whenever an encounter is completed between a citizen and LTT.

The Encounter.type attribute is used to classify the type of activities that occur at the encounter. The encounters have been classified accordingly:

* Henvendelse
* Forsamtale
* Screening
* Behandling
* Afsluttende samtale

Only encounters actually carried out should be documented. Consequently, the encounter.status should be 'finished'. However, if errors have been reported use the 'entered-in-error' status as described by the FHIR documentation.

Encounter.class is mandatory in FHIR. In this model only the code 'AMB' Ambulatory is allowed.
In the Danish municipalities the value is used as: Sessions where the citizens visit municipality facilities e.g. for training or health prevention.

The time of the encounter is documented in Encounter.period.start, and it is mandatory.

Encounter.subject relates to the subject that the encounter is about. In LTT this is always the child or youth.
Sometimes it is actually the parents, legal guardians, etc. of the child or youth that are receiving the training or guiding. To document this, Encounter.participant can be used to tell whether it is the child/youth, who is present (maybe in companionship with the parents) or if it is just the parents, who participate in the encounter.

Encounter.extension[deliveryType] is used to state, how encounters are delivered. Valid values are 'individual' and 'group based'.

### Conversions between Danish information model and FHIR profile

Nedenstående tabel definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens atributter, der skal bruges til specifikation af indholdet.

{:class="grid"}
|   Dansk attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|kontaktstatus|Kode, der indikerer om kontakten er igangværende, eller om dokumentationen repræsentere en fremtidig intention eller er historisk|Encounter.status|
|kontaktklasse|Klasse, der udtrykker en generel kategori for kontakten, som rækker ud over den kommunale kontekst|Encounter.class|
|kontakttype|Kode, der udtrykker typen af aktivitet der gennemføres ved kontakten|Encounter.type|
|kontaktsubjekt|Den borger kontakten vedrører|Encounter.subject|
|kontaktdeltagere|Deltagere under kontakten|Encounter.participant|
|kontaktstart|Kontaktens start|Encounter.period.start|
|kontaktLeveringstype|Type, der beskriver hvordan kontaktes leveres|Encounter.extension:deliveryType|

