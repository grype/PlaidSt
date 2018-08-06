Class {
	#name : #PlaidWarning,
	#superclass : #PlaidModel,
	#instVars : [
		'type',
		'code',
		'cause'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidWarning >> cause [
	^ cause
]

{ #category : #accessing }
PlaidWarning >> cause: anObject [
	cause := anObject
]

{ #category : #accessing }
PlaidWarning >> code [
	^ code
]

{ #category : #accessing }
PlaidWarning >> code: anObject [
	code := anObject
]

{ #category : #description }
PlaidWarning >> codeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Code';
		accessor: #code;
		jsonName: #warning_code;
		yourself
]

{ #category : #comparing }
PlaidWarning >> hash [
	^ type hash + code hash
]

{ #category : #testing }
PlaidWarning >> isOwnersUnavailable [
	^ code asUppercase = 'OWNERS_UNAVAILABLE'
]

{ #category : #printing }
PlaidWarning >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	super printOn: aStream.
	aStream
		nextPutAll: ' <';
		print: type.
	aStream
		nextPutAll: ':';
		print: code.
	aStream nextPut: $>
]

{ #category : #accessing }
PlaidWarning >> type [
	^ type
]

{ #category : #accessing }
PlaidWarning >> type: anObject [
	type := anObject
]

{ #category : #description }
PlaidWarning >> typeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Type';
		accessor: #type;
		jsonName: #warning_type;
		yourself
]
