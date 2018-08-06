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
