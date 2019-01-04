Class {
	#name : #PlaidAssetReportUser,
	#superclass : #PlaidModel,
	#instVars : [
		'clientUserId',
		'firstName',
		'middleName',
		'lastName',
		'ssn',
		'phoneNumber',
		'email'
	],
	#category : #'Plaid-Models'
}

{ #category : #comparing }
PlaidAssetReportUser >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ ssn = anObject ssn and: [ clientUserId = anObject clientUserId ]
]

{ #category : #accessing }
PlaidAssetReportUser >> clientUserId [
	^ clientUserId
]

{ #category : #accessing }
PlaidAssetReportUser >> clientUserId: anObject [
	clientUserId := anObject
]

{ #category : #description }
PlaidAssetReportUser >> clientUserIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Client User ID';
		accessor: #clientUserId;
		jsonName: #client_user_id;
		yourself
]

{ #category : #accessing }
PlaidAssetReportUser >> email [
	^ email
]

{ #category : #accessing }
PlaidAssetReportUser >> email: anObject [
	email := anObject
]

{ #category : #description }
PlaidAssetReportUser >> emailDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Email';
		accessor: #email;
		jsonName: #email;
		yourself
]

{ #category : #accessing }
PlaidAssetReportUser >> firstName [
	^ firstName
]

{ #category : #accessing }
PlaidAssetReportUser >> firstName: anObject [
	firstName := anObject
]

{ #category : #description }
PlaidAssetReportUser >> firstNameDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'First Name';
		accessor: #firstName;
		jsonName: #first_name;
		yourself
]

{ #category : #comparing }
PlaidAssetReportUser >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ ssn hash bitXor: clientUserId hash
]

{ #category : #accessing }
PlaidAssetReportUser >> lastName [
	^ lastName
]

{ #category : #accessing }
PlaidAssetReportUser >> lastName: anObject [
	lastName := anObject
]

{ #category : #description }
PlaidAssetReportUser >> lastNameDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Last Name';
		accessor: #lastName;
		jsonName: #last_name;
		yourself
]

{ #category : #accessing }
PlaidAssetReportUser >> middleName [
	^ middleName
]

{ #category : #accessing }
PlaidAssetReportUser >> middleName: anObject [
	middleName := anObject
]

{ #category : #description }
PlaidAssetReportUser >> middleNameDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Middle Name';
		accessor: #middleName;
		jsonName: #middle_name;
		yourself
]

{ #category : #accessing }
PlaidAssetReportUser >> phoneNumber [
	^ phoneNumber
]

{ #category : #accessing }
PlaidAssetReportUser >> phoneNumber: anObject [
	phoneNumber := anObject
]

{ #category : #description }
PlaidAssetReportUser >> phoneNumberDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Phone Number';
		accessor: #phoneNumber;
		jsonName: #phone_number;
		yourself
]

{ #category : #printing }
PlaidAssetReportUser >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	super printOn: aStream.
	aStream
		nextPutAll: ' <';
		nextPutAll: email;
		nextPut: $>
]

{ #category : #accessing }
PlaidAssetReportUser >> ssn [
	^ ssn
]

{ #category : #accessing }
PlaidAssetReportUser >> ssn: anObject [
	ssn := anObject
]

{ #category : #description }
PlaidAssetReportUser >> ssnDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'SSN';
		accessor: #ssn;
		jsonName: #ssn;
		yourself
]
