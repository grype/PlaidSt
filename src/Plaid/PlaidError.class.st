Class {
	#name : #PlaidError,
	#superclass : #PlaidModel,
	#instVars : [
		'type',
		'code',
		'message',
		'displayMessage'
	],
	#category : #'Plaid-Models'
}

{ #category : #comparing }
PlaidError >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ code = anObject code and: [ type = anObject type ]
]

{ #category : #accessing }
PlaidError >> code [
	^ code
]

{ #category : #accessing }
PlaidError >> code: anObject [
	code := anObject
]

{ #category : #description }
PlaidError >> codeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Code';
		accessor: #code;
		jsonName: #error_code;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidError >> displayMessage [
	^ displayMessage ifNil: [ message ]
]

{ #category : #accessing }
PlaidError >> displayMessage: anObject [
	displayMessage := anObject
]

{ #category : #description }
PlaidError >> displayMessageDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Display Message';
		accessor: #displayMessage;
		jsonName: #display_message;
		beOptional;
		yourself
]

{ #category : #comparing }
PlaidError >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ code hash bitXor: type hash
]

{ #category : #accessing }
PlaidError >> message [
	^ message
]

{ #category : #accessing }
PlaidError >> message: anObject [
	message := anObject
]

{ #category : #description }
PlaidError >> messageDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Message';
		accessor: #message;
		jsonName: #error_message;
		beOptional;
		yourself
]

{ #category : #printing }
PlaidError >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	super printOn: aStream.
	aStream
		nextPutAll: ' <';
		print: message;
		nextPut: $>
]

{ #category : #accessing }
PlaidError >> type [
	^ type
]

{ #category : #accessing }
PlaidError >> type: anObject [
	type := anObject
]

{ #category : #description }
PlaidError >> typeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Type';
		accessor: #type;
		jsonName: #error_type;
		beOptional;
		yourself
]
