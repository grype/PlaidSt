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
