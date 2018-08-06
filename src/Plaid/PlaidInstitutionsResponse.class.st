Class {
	#name : #PlaidInstitutionsResponse,
	#superclass : #PlaidResponse,
	#instVars : [
		'institutions',
		'totalInstitutions'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidInstitutionsResponse >> institutions [
	^ institutions
]

{ #category : #accessing }
PlaidInstitutionsResponse >> institutions: anObject [
	institutions := anObject
]

{ #category : #description }
PlaidInstitutionsResponse >> institutionsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Institutions';
		accessor: #institutions;
		jsonName: #institutions;
		classes: { PlaidInstitution };
		beOptional;
		beOrdered;
		yourself
]

{ #category : #accessing }
PlaidInstitutionsResponse >> totalInstitutions [
	^ totalInstitutions
]

{ #category : #accessing }
PlaidInstitutionsResponse >> totalInstitutions: anObject [
	totalInstitutions := anObject
]

{ #category : #description }
PlaidInstitutionsResponse >> totalInstitutionsDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Total Institutions';
		accessor: #totalInstitutions;
		jsonName: #total;
		yourself
]
