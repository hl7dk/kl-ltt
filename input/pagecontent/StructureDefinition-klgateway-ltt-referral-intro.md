## Scope and usage
This model is used whenever a referral is created for a child or youth during the as part of the LTT.

CarePlan.activity.detail.code holds the referral code, which has to come from the specified list of referrals.

CarePlan.period.start is when the referral has been established.

Notice that a referral does not necessarily mean that the LTT for the citizen is completed.

CarePlan.status and CarePlan.intent are mandatory. CarePlan.intent is always 'plan' in this implementation guide. CarePlan status should be either 'completed' or 'entered-in-error'.

CarePlan.activity.detail.status is also mandatory, and the status 'completed' is expected to be used. It is recommended not to use 'entered-in-error' - if the CarePlan is entered-in-error use CarePlan.status.

CarePlan.subject indicates the citizen receiving the referral.

### Conversions between Danish information model and FHIR profile

Nedenstående tabel definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens atributter, der skal bruges til specifikation af indholdet.

{:class="grid"}
|   Dansk attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|henvisningsstatus|Indikerer om henvisningen er klar til at blive handlet på, om dokumentationen repræsentere en fremtidig intention eller er historisk.|CarePlan.status|
|henvisningshensigt|Indikerer niveauet af autorisation og hvor langt i planlægningen henvisningen er|CarePlan.intent|
|henvisningsAktivitetsstatus|Indikerer om henvisningen er igangsat, eller om den ikke er startet, er aflyst, eller er færdiggjort.|CarePlan.activity.detail.status|
|forløbsreference|Reference til det forløb borgeren deltager i, da henvisningen foretages|CarePlan.partOf|
|henvisningssubjekt|Den broger, som henvisningen retter sig mod|CarePlan.subject|
|henvisningskontakt|Den kontakt, som henvisningen udspringer fra|CarePlan.encounter|
|henvisningstidspunkt|Det tidspunkt henvisningen foretages|CarePlan.period.start|
|henvisningsbidragsyder|Organisation, der har leveret indholdet til henvisningen|CarePlan.contributor|
|henvisningskode|Kode, der udtrykker hvor til borgeren er henvist|CarePlan.activity.detail.code|



