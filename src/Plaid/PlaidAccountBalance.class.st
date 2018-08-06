Class {
	#name : #PlaidAccountBalance,
	#superclass : #PlaidModel,
	#instVars : [
		'available',
		'current',
		'limit'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidAccountBalance >> available [
	^ available
]

{ #category : #accessing }
PlaidAccountBalance >> available: anObject [
	available := anObject
]

{ #category : #description }
PlaidAccountBalance >> availableDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Available';
		accessor: #available;
		jsonName: #available;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidAccountBalance >> current [
	^ current
]

{ #category : #accessing }
PlaidAccountBalance >> current: anObject [
	current := anObject
]

{ #category : #description }
PlaidAccountBalance >> currentDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Current';
		accessor: #current;
		jsonName: #current;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidAccountBalance >> limit [
	^ limit
]

{ #category : #accessing }
PlaidAccountBalance >> limit: anObject [
	limit := anObject
]

{ #category : #description }
PlaidAccountBalance >> limitDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Limit';
		accessor: #limit;
		jsonName: #limit;
		beOptional;
		yourself
]

{ #category : #printing }
PlaidAccountBalance >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	super printOn: aStream.
	aStream
		nextPutAll: ' <';
		print: available;
		nextPut: $/;
		print: current;
		nextPut: $/;
		print: limit;
		nextPut: $>
]
