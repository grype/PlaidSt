Class {
	#name : #PlaidResponse,
	#superclass : #PlaidModel,
	#instVars : [
		'requestId'
	],
	#category : #'Plaid-Models'
}

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
