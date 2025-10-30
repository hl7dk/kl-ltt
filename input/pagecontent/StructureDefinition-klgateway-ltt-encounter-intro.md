## Scope and usage
This model is used whenever an encounter is completed between a citizen and LTT.

The Encounter.type attribute is used to classify the type of activities that occur at the encounter. The encounters have been classified accordingly:

* Henvendelse
* Forsamtale
* Screening
* Behandling
* Afsluttende samtale
* Afslutning

Only encounters actually carried out should be documented. Consequently, the encounter.status should be 'finished'. However, if errors have been reported use the 'entered-in-error' status as described by the FHIR documentation.

Encounter.class is mandatory in FHIR. In this implementation guide, always use 'AMB' Ambulatory.


The time of the encounter is documented in Encounter.period.start, and it is mandatory.

Encounter.extension[basedOnCarePlan] must be populated with a reference to the care plan.

Encounter.subject relates to the subject that the encounter is about. In LTT this is always the child or youth.
Eventhough it can be the parents, legal guardians, etc. of the child or youth that are receiving the training or guiding. To document this, Encounter.participant can be used to tell whether it is the child/youth, who is present (maybe in companionship with the parents) or if it is just the parents, who participate in the encounter.
Encounter.extension[deliveryType] is used to state, how encounters are delivered. Valid values are 'individual' and 'group based'.
There's a difference in how the information is registered in the user interface and how it is reported to KL Gateway. The table below shows how the registrations from the user interface is represented in FHIR:

{:class="grid"}
|   User interface terms      | FHIR representation        |
| ------------- |-------------| 
|8742dc92-2878-4074-b128-b0384c4989c9 <br>"Gruppebaseret behandling med barn/ung" |Encounter.extension[deliveryType] = 2865f123-15a7-4a36-a514-32ea37c400ca "Gruppebaseret indsats" <br>Encounter.participant.type.coding = ca228a58-bd0e-4b0e-81ce-3866adc26535 "Barn/ung deltager"|
|dadb1540-9542-46d1-a784-0559d94e0b9a <br>"Gruppebaseret behandling uden barn/ung" |Encounter.extension[deliveryType] = 2865f123-15a7-4a36-a514-32ea37c400ca "Gruppebaseret indsats" <br>Encounter.participant.type.coding = d3578249-10df-4051-851d-3986b1570bee "Omsorgsperson uden barn/ung"|
|ca52f015-193e-4d31-9471-7385717dfa44 <br>"Individuel behandling med barn/ung" |Encounter.extension[deliveryType] = 8d12d74c-17da-47a7-a4fe-e69dbaec0a8c "Individuel indsats" <br>Encounter.participant.type.coding = ca228a58-bd0e-4b0e-81ce-3866adc26535 "Barn/ung deltager"|
|c86b5c04-7e13-488b-87fd-fb1e30309bb8 <br>"Individuel behandling uden barn/ung" |Encounter.extension[deliveryType] = 8d12d74c-17da-47a7-a4fe-e69dbaec0a8c "Individuel indsats" <br>Encounter.participant.type.coding = d3578249-10df-4051-851d-3986b1570bee "Omsorgsperson uden barn/ung"|


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
|kontaktBaseretPå|Den care plan, der er grunden til at denne kontakt udføres|Encounter.extension:basedOnCarePlan|

