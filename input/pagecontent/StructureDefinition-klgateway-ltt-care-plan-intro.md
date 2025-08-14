## Scope and usage
A CarePlan is created as soon as a citizen participates in an LTT (Lettilgængeligt tilbud) at the municipality. It models the treatment pathway the citizen follows within the LTT and groups together all related contacts belonging to the same treatment process.

CarePlan.status and CarePlan.intent are mandatory in the FHIR CarePlan resource. CarePlan.intent is always 'plan' in this implementation guide. CarePlan status should at least distiguish between 'active', 'completed' and 'entered-in-error'. The status 'active' means that the care plan is currently being acted upon and should be used until the service is completed and the status of the care plan changes to 'completed'. If the care plan has been created by mistake and should never have existed, then the status 'entered-in-error' must be used.

CarePlan.activity.detail.status is also mandatory, and it is recommended to use the status codes 'in-progress', 'completed' and 'entered-in-error'. The status should align with the CarePlan.status.

CarePlan.subject references the citizen, which is always the child or youth. CarePlan.author is the organization that is responsible for the care plan.

CarePlan.period.start is when the service for that specific citizen was first started (forløbstart). 

CarePlan.activity.outcomeReference references the Encounters that are a result of the LTT activity, and the CarePlan.activity.detail.reasonCode describes the child or youth's issue and therefor the focus area of treatment.

### Conversions between Danish information model and FHIR profile

Nedenstående tabel definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens atributter, der skal bruges til specifikation af indholdet.

{:class="grid"}
|   Dansk attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|forløbsid|Unikt id for det enkelte forløb|CarePlan.identifier|
|forløbsstatus|Indikerer om forløbet er igangsat, er færdiggjort eller oprettet ved en fejl|CarePlan.status|
|forløbshensigt|Indikerer niveauet af autorisation og hvor langt i processen forløbet er|CarePlan.intent|
|forløbstart|Tid, hvor forløbet er startet fx på baggrund af en henvendelse|CarePlan.period.start|
|forløbslut|Tid, hvor forløbet er afsluttet. Forløb afsluttes når de vurderes fuldført eller hvis der konstateres frafald som ikke vurderes realistisk at genoptage|CarePlan.period.end|
|forløbssubjekt|Den borger (barn eller ung) som forløbet retter sig mod|CarePlan.subject|
|forløbsansvarlig|Organisation, der har ansvaret for forløbet|CarePlan.author|
|forløbGennemførtAktivitet|De kontakter som efterhånden indgår i forløbet|CarePlan.activity.outcomeReference|
|forløbskode|Kode, der udtrykker hvilken klasse forløbet tilhører.|CarePlan.activity.detail.code|
|forløbstema|Tema omhandler de udfordringer barnet/den unge kommer med. Temaer kan blive afdækket i forsamtale, i screening eller i behandlingsforløb. Det er muligt at angive flere temaer og løbende opdatere temaer registreret tidligere i forløb|CarePlan.activity.detail.reasonCode|
|forløbsAktivitetsstatus|Indikerer om forløbet er igangsat, er færdiggjort eller oprettet ved en fejl|CarePlan.activity.detail.status|