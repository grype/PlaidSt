Class {
	#name : #PlaidWarningCause,
	#superclass : #PlaidModel,
	#instVars : [
		'itemId',
		'causeError'
	],
	#category : #'Plaid-Models'
}

{ #category : #comparing }
PlaidWarningCause >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ causeError = anObject causeError and: [ itemId = anObject itemId ]
]

{ #category : #accessing }
PlaidWarningCause >> causeError [
	^ causeError
]

{ #category : #accessing }
PlaidWarningCause >> causeError: anObject [
	causeError := anObject
]

{ #category : #description }
PlaidWarningCause >> causeErrorDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Error';
		accessor: #causeError;
		jsonName: #error;
		classes: {PlaidError};
		beOptional;
		yourself
]

{ #category : #comparing }
PlaidWarningCause >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ causeError hash bitXor: itemId hash
]

{ #category : #accessing }
PlaidWarningCause >> itemId [
	^ itemId
]

{ #category : #accessing }
PlaidWarningCause >> itemId: anObject [
	itemId := anObject
]

{ #category : #description }
PlaidWarningCause >> itemIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Item ID';
		accessor: #itemId;
		jsonName: #item_id;
		yourself
]

{ #category : #printing }
PlaidWarningCause >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	super printOn: aStream.
	aStream
		nextPutAll: ' <';
		print: (causeError ifNotNil: [ :e | e message ]);
		nextPut: $>
]
