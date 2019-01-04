Class {
	#name : #PlaidIdentityContactInfo,
	#superclass : #PlaidModel,
	#instVars : [
		'data',
		'primary',
		'type'
	],
	#category : #'Plaid-Models'
}

{ #category : #comparing }
PlaidIdentityContactInfo >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ data = anObject data
		and: [ primary = anObject primary and: [ type = anObject type ] ]
]

{ #category : #accessing }
PlaidIdentityContactInfo >> data [
	^ data
]

{ #category : #accessing }
PlaidIdentityContactInfo >> data: anObject [
	data := anObject
]

{ #category : #description }
PlaidIdentityContactInfo >> dataDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Data';
		accessor: #data;
		jsonName: #data;
		yourself
]

{ #category : #comparing }
PlaidIdentityContactInfo >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ data hash bitXor: (primary hash bitXor: type hash)
]

{ #category : #accessing }
PlaidIdentityContactInfo >> primary [
	^ primary
]

{ #category : #accessing }
PlaidIdentityContactInfo >> primary: anObject [
	primary := anObject
]

{ #category : #description }
PlaidIdentityContactInfo >> primaryDescription [
	<magritteDescription>
	^ MABooleanDescription new
		label: 'Primary?';
		accessor: #primary;
		jsonName: #primary;
		yourself
]

{ #category : #printing }
PlaidIdentityContactInfo >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	super printOn: aStream.
	aStream
		nextPutAll: ' <';
		nextPutAll: data greaseString;
		nextPutAll: '>'
]

{ #category : #accessing }
PlaidIdentityContactInfo >> type [
	^ type
]

{ #category : #accessing }
PlaidIdentityContactInfo >> type: anObject [
	type := anObject
]

{ #category : #description }
PlaidIdentityContactInfo >> typeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Type';
		accessor: #type;
		jsonName: #type;
		yourself
]
