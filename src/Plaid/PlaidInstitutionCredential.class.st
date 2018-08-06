Class {
	#name : #PlaidInstitutionCredential,
	#superclass : #PlaidModel,
	#instVars : [
		'label',
		'name',
		'type'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidInstitutionCredential >> label [
	^ label
]

{ #category : #accessing }
PlaidInstitutionCredential >> label: anObject [
	label := anObject
]

{ #category : #description }
PlaidInstitutionCredential >> labelDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Label';
		accessor: #label;
		jsonName: #label;
		yourself
]

{ #category : #accessing }
PlaidInstitutionCredential >> name [
	^ name
]

{ #category : #accessing }
PlaidInstitutionCredential >> name: anObject [
	name := anObject
]

{ #category : #description }
PlaidInstitutionCredential >> nameDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Name';
		accessor: #name;
		jsonName: #name;
		yourself
]

{ #category : #accessing }
PlaidInstitutionCredential >> type [
	^ type
]

{ #category : #accessing }
PlaidInstitutionCredential >> type: anObject [
	type := anObject
]

{ #category : #description }
PlaidInstitutionCredential >> typeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Type';
		accessor: #type;
		jsonName: #type;
		yourself
]
