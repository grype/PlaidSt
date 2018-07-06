Class {
	#name : #PJInstitutionCredential,
	#superclass : #PJObject,
	#instVars : [
		'label',
		'name',
		'type'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJInstitutionCredential >> label [
	^ label
]

{ #category : #accessing }
PJInstitutionCredential >> label: anObject [
	label := anObject
]

{ #category : #description }
PJInstitutionCredential >> labelDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Label';
		accessor: #label;
		jsonName: #label;
		yourself
]

{ #category : #accessing }
PJInstitutionCredential >> name [
	^ name
]

{ #category : #accessing }
PJInstitutionCredential >> name: anObject [
	name := anObject
]

{ #category : #description }
PJInstitutionCredential >> nameDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Name';
		accessor: #name;
		jsonName: #name;
		yourself
]

{ #category : #accessing }
PJInstitutionCredential >> type [
	^ type
]

{ #category : #accessing }
PJInstitutionCredential >> type: anObject [
	type := anObject
]

{ #category : #description }
PJInstitutionCredential >> typeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Type';
		accessor: #type;
		jsonName: #type;
		yourself
]
