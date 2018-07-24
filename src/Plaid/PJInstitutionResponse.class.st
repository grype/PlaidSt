Class {
	#name : #PJInstitutionResponse,
	#superclass : #PJResponse,
	#instVars : [
		'institution'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJInstitutionResponse >> institution [
	^ institution
]

{ #category : #accessing }
PJInstitutionResponse >> institution: anObject [
	institution := anObject
]

{ #category : #description }
PJInstitutionResponse >> institutionDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Institution';
		accessor: #institution;
		jsonName: #institution;
		classes: { PJInstitution };
		beOptional;
		yourself
]
