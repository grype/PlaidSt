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

{ #category : #comparing }
PlaidInstitutionCredential >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ label = anObject label
		and: [ name = anObject name and: [ type = anObject type ] ]
]

{ #category : #comparing }
PlaidInstitutionCredential >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ label hash bitXor: (name hash bitXor: type hash)
]

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
