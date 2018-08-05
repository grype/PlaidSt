Class {
	#name : #PJWarning,
	#superclass : #PJObject,
	#instVars : [
		'type',
		'code',
		'cause'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJWarning >> cause [
	^ cause
]

{ #category : #accessing }
PJWarning >> cause: anObject [
	cause := anObject
]

{ #category : #accessing }
PJWarning >> code [
	^ code
]

{ #category : #accessing }
PJWarning >> code: anObject [
	code := anObject
]

{ #category : #description }
PJWarning >> codeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Code';
		accessor: #code;
		jsonName: #warning_code;
		yourself
]

{ #category : #comparing }
PJWarning >> hash [
	^ type hash + code hash
]

{ #category : #testing }
PJWarning >> isOwnersUnavailable [
	^ code asUppercase = 'OWNERS_UNAVAILABLE'
]

{ #category : #printing }
PJWarning >> printOn: aStream [
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
PJWarning >> type [
	^ type
]

{ #category : #accessing }
PJWarning >> type: anObject [
	type := anObject
]

{ #category : #description }
PJWarning >> typeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Type';
		accessor: #type;
		jsonName: #warning_type;
		yourself
]
