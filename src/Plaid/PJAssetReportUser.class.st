Class {
	#name : #PJAssetReportUser,
	#superclass : #PJObject,
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

{ #category : #accessing }
PJAssetReportUser >> clientUserId [
	^ clientUserId
]

{ #category : #accessing }
PJAssetReportUser >> clientUserId: anObject [
	clientUserId := anObject
]

{ #category : #description }
PJAssetReportUser >> clientUserIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Client User ID';
		accessor: #clientUserId;
		jsonName: #client_user_id;
		yourself
]

{ #category : #accessing }
PJAssetReportUser >> email [
	^ email
]

{ #category : #accessing }
PJAssetReportUser >> email: anObject [
	email := anObject
]

{ #category : #description }
PJAssetReportUser >> emailDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Email';
		accessor: #email;
		jsonName: #email;
		yourself
]

{ #category : #accessing }
PJAssetReportUser >> firstName [
	^ firstName
]

{ #category : #accessing }
PJAssetReportUser >> firstName: anObject [
	firstName := anObject
]

{ #category : #description }
PJAssetReportUser >> firstNameDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'First Name';
		accessor: #firstName;
		jsonName: #first_name;
		yourself
]

{ #category : #accessing }
PJAssetReportUser >> lastName [
	^ lastName
]

{ #category : #accessing }
PJAssetReportUser >> lastName: anObject [
	lastName := anObject
]

{ #category : #description }
PJAssetReportUser >> lastNameDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Last Name';
		accessor: #lastName;
		jsonName: #last_name;
		yourself
]

{ #category : #accessing }
PJAssetReportUser >> middleName [
	^ middleName
]

{ #category : #accessing }
PJAssetReportUser >> middleName: anObject [
	middleName := anObject
]

{ #category : #description }
PJAssetReportUser >> middleNameDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Middle Name';
		accessor: #middleName;
		jsonName: #middle_name;
		yourself
]

{ #category : #accessing }
PJAssetReportUser >> phoneNumber [
	^ phoneNumber
]

{ #category : #accessing }
PJAssetReportUser >> phoneNumber: anObject [
	phoneNumber := anObject
]

{ #category : #description }
PJAssetReportUser >> phoneNumberDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Phone Number';
		accessor: #phoneNumber;
		jsonName: #phone_number;
		yourself
]

{ #category : #printing }
PJAssetReportUser >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	super printOn: aStream.
	aStream
		nextPutAll: ' <';
		nextPutAll: email;
		nextPut: $>
]

{ #category : #accessing }
PJAssetReportUser >> ssn [
	^ ssn
]

{ #category : #accessing }
PJAssetReportUser >> ssn: anObject [
	ssn := anObject
]

{ #category : #description }
PJAssetReportUser >> ssnDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'SSN';
		accessor: #ssn;
		jsonName: #ssn;
		yourself
]
