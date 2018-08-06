Class {
	#name : #PlaidAccountNumbers,
	#superclass : #PlaidModel,
	#instVars : [
		'accountNumber',
		'accountId',
		'routingNumber',
		'wireRoutingNumber'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidAccountNumbers >> accountId [
	^ accountId
]

{ #category : #accessing }
PlaidAccountNumbers >> accountId: anObject [
	accountId := anObject
]

{ #category : #description }
PlaidAccountNumbers >> accountIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Account ID';
		accessor: #accountId;
		jsonName: #account_id;
		yourself
]

{ #category : #accessing }
PlaidAccountNumbers >> accountNumber [
	^ accountNumber
]

{ #category : #accessing }
PlaidAccountNumbers >> accountNumber: anObject [
	accountNumber := anObject
]

{ #category : #description }
PlaidAccountNumbers >> accountNumberDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Account Number';
		accessor: #accountNumber;
		jsonName: #account;
		yourself
]

{ #category : #comparing }
PlaidAccountNumbers >> hash [
	^ accountId hash
]

{ #category : #printing }
PlaidAccountNumbers >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPutAll: ' <';
		nextPutAll: self routingNumber greaseString;
		nextPutAll: ', ';
		nextPutAll: self accountNumber greaseString;
		nextPut: $>
]

{ #category : #accessing }
PlaidAccountNumbers >> routingNumber [
	^ routingNumber
]

{ #category : #accessing }
PlaidAccountNumbers >> routingNumber: anObject [
	routingNumber := anObject
]

{ #category : #description }
PlaidAccountNumbers >> routingNumberDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Routing Number';
		accessor: #routingNumber;
		jsonName: #routing;
		yourself
]

{ #category : #accessing }
PlaidAccountNumbers >> wireRoutingNumber [
	^ wireRoutingNumber
]

{ #category : #accessing }
PlaidAccountNumbers >> wireRoutingNumber: anObject [
	wireRoutingNumber := anObject
]

{ #category : #description }
PlaidAccountNumbers >> wireRoutingNumberDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Wire Routing Number';
		accessor: #wireRoutingNumber;
		jsonName: #wire_routing;
		yourself
]
