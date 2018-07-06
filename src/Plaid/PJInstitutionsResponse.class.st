Class {
	#name : #PJInstitutionsResponse,
	#superclass : #PJResponse,
	#instVars : [
		'institutions',
		'totalInstitutions'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJInstitutionsResponse >> institutions [
	^ institutions
]

{ #category : #accessing }
PJInstitutionsResponse >> institutions: anObject [
	institutions := anObject
]

{ #category : #description }
PJInstitutionsResponse >> institutionsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Institutions';
		accessor: #institutions;
		jsonName: #institutions;
		classes: { PJInstitution };
		beOptional;
		beOrdered;
		yourself
]

{ #category : #accessing }
PJInstitutionsResponse >> totalInstitutions [
	^ totalInstitutions
]

{ #category : #accessing }
PJInstitutionsResponse >> totalInstitutions: anObject [
	totalInstitutions := anObject
]

{ #category : #description }
PJInstitutionsResponse >> totalInstitutionsDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Total Institutions';
		accessor: #totalInstitutions;
		jsonName: #total;
		yourself
]
