Class {
	#name : #PlaidResponse,
	#superclass : #PlaidModel,
	#instVars : [
		'requestId'
	],
	#category : #'Plaid-Models'
}

{ #category : #comparing }
PlaidResponse >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ requestId = anObject requestId
]

{ #category : #comparing }
PlaidResponse >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ requestId hash
]

{ #category : #accessing }
PlaidResponse >> requestId [
	^ requestId
]

{ #category : #accessing }
PlaidResponse >> requestId: anObject [
	requestId := anObject
]

{ #category : #description }
PlaidResponse >> requestIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Request ID';
		accessor: #requestId;
		jsonName: #request_id;
		yourself
]
