Class {
	#name : #PlaidWarningCause,
	#superclass : #PlaidModel,
	#instVars : [
		'itemId',
		'causeError'
	],
	#category : #'Plaid-Models'
}

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
