Class {
	#name : #PJResponse,
	#superclass : #PJObject,
	#instVars : [
		'requestId'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJResponse >> requestId [
	^ requestId
]

{ #category : #accessing }
PJResponse >> requestId: anObject [
	requestId := anObject
]

{ #category : #description }
PJResponse >> requestIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Request ID';
		accessor: #requestId;
		jsonName: #request_id;
		yourself
]
