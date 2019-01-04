Class {
	#name : #PlaidIdentity,
	#superclass : #PlaidModel,
	#instVars : [
		'addresses',
		'emails',
		'names',
		'phoneNumbers'
	],
	#category : #'Plaid-Models'
}

{ #category : #comparing }
PlaidIdentity >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ addresses = anObject addresses
		and: [ emails = anObject emails
				and: [ names = anObject names and: [ phoneNumbers = anObject phoneNumbers ] ] ]
]

{ #category : #accessing }
PlaidIdentity >> addresses [
	^ addresses
]

{ #category : #accessing }
PlaidIdentity >> addresses: anObject [
	addresses := anObject
]

{ #category : #description }
PlaidIdentity >> addressesDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Addresses';
		accessor: #addresses;
		jsonName: #addresses;
		classes: { PlaidIdentityAddress };
		beOrdered;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidIdentity >> emails [
	^ emails
]

{ #category : #accessing }
PlaidIdentity >> emails: anObject [
	emails := anObject
]

{ #category : #description }
PlaidIdentity >> emailsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Emails';
		accessor: #emails;
		jsonName: #emails;
		classes: { PlaidIdentityContactInfo };
		beOrdered;
		beOptional;
		yourself
]

{ #category : #comparing }
PlaidIdentity >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ addresses hash
		bitXor: (emails hash bitXor: (names hash bitXor: phoneNumbers hash))
]

{ #category : #accessing }
PlaidIdentity >> names [
	^ names
]

{ #category : #accessing }
PlaidIdentity >> names: anObject [
	names := anObject
]

{ #category : #description }
PlaidIdentity >> namesDescription [
	<magritteDescription>
	^ MAElementDescription new
		label: 'Names';
		accessor: #names;
		jsonName: #names;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidIdentity >> phoneNumbers [
	^ phoneNumbers
]

{ #category : #accessing }
PlaidIdentity >> phoneNumbers: anObject [
	phoneNumbers := anObject
]

{ #category : #description }
PlaidIdentity >> phoneNumbersDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Phone Numbers';
		accessor: #phoneNumbers;
		jsonName: #phone_numbers;
		classes: { PlaidIdentityContactInfo };
		beOrdered;
		beOptional;
		yourself
]

{ #category : #printing }
PlaidIdentity >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	super printOn: aStream.
	aStream
		nextPutAll: ' <';
		nextPutAll: (names joinUsing: ' ');
		nextPut: $>
]
