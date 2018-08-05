Class {
	#name : #PJWarningCause,
	#superclass : #PJObject,
	#instVars : [
		'itemId',
		'causeError'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJWarningCause >> causeError [
	^ causeError
]

{ #category : #accessing }
PJWarningCause >> causeError: anObject [
	causeError := anObject
]

{ #category : #description }
PJWarningCause >> causeErrorDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Error';
		accessor: #causeError;
		jsonName: #error;
		classes: {PJError};
		beOptional;
		yourself
]

{ #category : #accessing }
PJWarningCause >> itemId [
	^ itemId
]

{ #category : #accessing }
PJWarningCause >> itemId: anObject [
	itemId := anObject
]

{ #category : #description }
PJWarningCause >> itemIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Item ID';
		accessor: #itemId;
		jsonName: #item_id;
		yourself
]

{ #category : #printing }
PJWarningCause >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	super printOn: aStream.
	aStream
		nextPutAll: ' <';
		print: (causeError ifNotNil: [ :e | e message ]);
		nextPut: $>
]
