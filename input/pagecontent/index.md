# LTT - KL Lettilgængeligt tilbud

This implementation guide describes the delivery of LTT data to KL Gateway. The data originates from the documentation on the activity in LTT in the Danish municipalities. The reporting aims for compliance with the Danish core profiles.

The profiles for the reporting are restricted to allow only the information that is required to report to KL Gateway.

## Overview
The data is reported as a collection of instances. A report contain instances that conforms to the profiles defined in this implementation guide. See figure below.

<img alt="OverviewModel" src="./ReportStructure.png" style="float:none; display:block; margin-left:auto; margin-right:auto; width:25%; height:25%;" />

In addition to being structured as a report, relationships exist between the profiles. These are illustrated in the UML Class Diagram in the figure below.

<img alt="ClassDiagram" src="./ClassDiagram.png" style="float:none; display:block; margin-left:auto; margin-right:auto; width:60%; height:60%;" />

The Class diagram shows that CarePlan, Encounter and Referral are all associated with Citizen i.e. these profiles know which Citizen they hold information about. The Encounter and Referral are also associated with the CarePlan.
 
The Citizen profile inherit from dk-core, even though it is not illustrated specifically in the Class Diagram.

## Special constraints, and resulting reporting practises
Whereas the report may seem unconstrained, each profile define constraints on attributes, datatypes and cardinalities. See descriptions below.

## Citizen
Information about the citizens that are the subjects of the report. This resource is used to get a reference to the child or youth.

##### Attributes
* civil registration number (CPR-nr).
* identification of the municipality holding and reporting the data.
* a FHIR status attribute used to report errors.

##### Validation
* One and only one civil registration number exists, and is a syntactically valid CPR-nr.
* One and only one managing organization exists, and is a syntactically valid SOR code (only code length is currently validated in the profile, but the authorization validates the actual SOR code).
* One FHIR status may exist, and should be selected from the standard ValueSet.

## CarePlan
This model contains information about the treatment pathway from the child’s or youths first encounter with the municipality concerning LTT.

##### Attributes
<!-- * An identifier of the care plan.-->
* A start time.
* An end time.
* A code that decribes which care plan it is.
* A reference to the Citizen instance that holds the child or youth's information.
* A reasonCode that describe the focus area which is the reason for the care plan and encounters.
* Three FHIR status attributes (status, intent, activity.detail.status).

##### Validation
<!-- * One and only one identifier of the care plan.-->
* One and only one code exists and should be selected from a specific ValueSet.
* One and only one start time.
* One and only one reference to the Citizen exists.
* The reasonCode is optional. If present, it should be selected from a specific ValueSet. It is allowed to have more than one reasonCode.
* The FHIR status attributes are mandatory, and should be selected from the standard FHIR ValueSet.

## Encounter
Information about when a child or youth have an encounter such as screenings, prelimerary interviews, treatments, etc. in a Danish municipality context. 

##### Attributes
* Type of encounter. The attribute describe which encounter is delivered using a code.
* Encounter class. The attribute holds a code which describe the place of delivery.
* The encounter start time.
* A reference to the Citizen instance that holds the child or youth's information.
* A FHIR status attribute.
* The participant of the encounter. It can be the child or youth itself or its parents.
* A delivery type code that express whether the encounter is delivered in a group or individually.
* A reference to the CarePlan instance the Encounter is a part of.

##### Validation
* One and only one encounter type exists, and should be selected from a specific ValueSet, no other codes may be reported.
* One and only one encounter class exists, and should be selected from a specific ValueSet.
* One and only one encounter start time exists.
* One and only one reference to the Citizen exists.
* One and only one reference to the CarePlan exists.
* One and only one FHIR status exists, and should be selected from the standard FHIR ValueSet.
* One delivery type code, which should be selected from a specific ValueSet, may exist.
* One participant code, which should be selected from a specific ValueSet, may exist.

## Referral
Referrals in this context are informal recommendations to other parties, such as the child’s or youth’s general practitioner, a §126a service in another municipality, and similar instances.

##### Attributes
* A code indicating which service the citizen is being referred to.
* A start time.
* A reference to the Citizen instance that holds the child or youth's information.
* A reference to the CarePlan instance that this referral is a part of.
* Three FHIR status attributes (status, intent, activity.detail.status).

##### Validation
* One and only one code is mandatory and should be selected from the specified ValueSet.
* One and only one start time.
* One and only one reference to the Citizen exists.
* One and only one reference to the CarePlan exists.
* The FHIR status attributes are mandatory, and should be selected from the standard FHIR ValueSet. activity.detail.status must be set to 'completed'.

## Dependencies
{% include dependency-table.xhtml %}

## Cross Version Analysis
{% include cross-version-analysis.xhtml %}

## Global Profiles
{% include globals-table.xhtml %}

## IP Statements
{% include ip-statements.xhtml %}