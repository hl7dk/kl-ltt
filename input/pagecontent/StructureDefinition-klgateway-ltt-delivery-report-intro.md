## Scope and usage
This model is used to represent the reporting of children and youth's data from the LTT service in the Danish Municipalities in Denmark.

The report is a FHIR Bundle that allows different resources to be grouped and handled as a collection. Bundle.entry references and includes each of the Resource instances. The valid resources in this bundle are the ones defined in this implementation guide. No others are allowed.

Bundle.timestamp holds the time where the bundle is collected or sent.

### Conversions between Danish information model and FHIR profile

Nedenstående tabel definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens atributter, der skal bruges til specifikation af indholdet.

{:class="grid"}
|   Dansk attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|indberetningsrapportIndhold|Hver af indberetningsrapportens indhold i form af ressourcer|Bundle.entry|
|indberetningsrapportTid|Tid, hvor rapporten samles eller afsendes|Bundle.timestamp|