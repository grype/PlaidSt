Class {
	#name : #PJAccountNumbers,
	#superclass : #PJObject,
	#instVars : [
		'accountNumber',
		'accountId',
		'routingNumber',
		'wireRoutingNumber'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJAccountNumbers >> accountId [
	^ accountId
]

{ #category : #accessing }
PJAccountNumbers >> accountId: anObject [
	accountId := anObject
]

{ #category : #description }
PJAccountNumbers >> accountIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Account ID';
		accessor: #accountId;
		jsonName: #account_id;
		yourself
]

{ #category : #accessing }
PJAccountNumbers >> accountNumber [
	^ accountNumber
]

{ #category : #accessing }
PJAccountNumbers >> accountNumber: anObject [
	accountNumber := anObject
]

{ #category : #description }
PJAccountNumbers >> accountNumberDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Account Number';
		accessor: #accountNumber;
		jsonName: #account;
		yourself
]

{ #category : #printing }
PJAccountNumbers >> printOn: aStream [
	aStream
		nextPutAll: self routingNumber greaseString;
		nextPutAll: ' ';
		nextPutAll: self accountNumber greaseString
]

{ #category : #accessing }
PJAccountNumbers >> routingNumber [
	^ routingNumber
]

{ #category : #accessing }
PJAccountNumbers >> routingNumber: anObject [
	routingNumber := anObject
]

{ #category : #description }
PJAccountNumbers >> routingNumberDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Routing Number';
		accessor: #routingNumber;
		jsonName: #routing;
		yourself
]

{ #category : #accessing }
PJAccountNumbers >> wireRoutingNumber [
	^ wireRoutingNumber
]

{ #category : #accessing }
PJAccountNumbers >> wireRoutingNumber: anObject [
	wireRoutingNumber := anObject
]

{ #category : #description }
PJAccountNumbers >> wireRoutingNumberDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Wire Routing Number';
		accessor: #wireRoutingNumber;
		jsonName: #wire_routing;
		yourself
]
