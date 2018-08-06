Class {
	#name : #PlaidInstitutionResponse,
	#superclass : #PlaidResponse,
	#instVars : [
		'institution'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidInstitutionResponse >> institution [
	^ institution
]

{ #category : #accessing }
PlaidInstitutionResponse >> institution: anObject [
	institution := anObject
]

{ #category : #description }
PlaidInstitutionResponse >> institutionDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Institution';
		accessor: #institution;
		jsonName: #institution;
		classes: { PlaidInstitution };
		beOptional;
		yourself
]
