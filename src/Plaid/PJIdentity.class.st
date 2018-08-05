Class {
	#name : #PJIdentity,
	#superclass : #PJObject,
	#instVars : [
		'addresses',
		'emails',
		'names',
		'phoneNumbers'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJIdentity >> addresses [
	^ addresses
]

{ #category : #accessing }
PJIdentity >> addresses: anObject [
	addresses := anObject
]

{ #category : #description }
PJIdentity >> addressesDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Addresses';
		accessor: #addresses;
		jsonName: #addresses;
		classes: { PJIdentityAddress };
		beOrdered;
		beOptional;
		yourself
]

{ #category : #accessing }
PJIdentity >> emails [
	^ emails
]

{ #category : #accessing }
PJIdentity >> emails: anObject [
	emails := anObject
]

{ #category : #description }
PJIdentity >> emailsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Emails';
		accessor: #emails;
		jsonName: #emails;
		classes: { PJIdentityContactInfo };
		beOrdered;
		beOptional;
		yourself
]

{ #category : #accessing }
PJIdentity >> names [
	^ names
]

{ #category : #accessing }
PJIdentity >> names: anObject [
	names := anObject
]

{ #category : #description }
PJIdentity >> namesDescription [
	<magritteDescription>
	^ MAElementDescription new
		label: 'Names';
		accessor: #names;
		jsonName: #names;
		beOptional;
		yourself
]

{ #category : #accessing }
PJIdentity >> phoneNumbers [
	^ phoneNumbers
]

{ #category : #accessing }
PJIdentity >> phoneNumbers: anObject [
	phoneNumbers := anObject
]

{ #category : #description }
PJIdentity >> phoneNumbersDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Phone Numbers';
		accessor: #phoneNumbers;
		jsonName: #phone_numbers;
		classes: { PJIdentityContactInfo };
		beOrdered;
		beOptional;
		yourself
]

{ #category : #printing }
PJIdentity >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	super printOn: aStream.
	aStream
		nextPutAll: ' <';
		nextPutAll: (names joinUsing: ' ');
		nextPut: $>
]
