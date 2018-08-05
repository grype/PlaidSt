Class {
	#name : #PJAccountBalance,
	#superclass : #PJObject,
	#instVars : [
		'available',
		'current',
		'limit'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJAccountBalance >> available [
	^ available
]

{ #category : #accessing }
PJAccountBalance >> available: anObject [
	available := anObject
]

{ #category : #description }
PJAccountBalance >> availableDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Available';
		accessor: #available;
		jsonName: #available;
		beOptional;
		yourself
]

{ #category : #accessing }
PJAccountBalance >> current [
	^ current
]

{ #category : #accessing }
PJAccountBalance >> current: anObject [
	current := anObject
]

{ #category : #description }
PJAccountBalance >> currentDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Current';
		accessor: #current;
		jsonName: #current;
		beOptional;
		yourself
]

{ #category : #accessing }
PJAccountBalance >> limit [
	^ limit
]

{ #category : #accessing }
PJAccountBalance >> limit: anObject [
	limit := anObject
]

{ #category : #description }
PJAccountBalance >> limitDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Limit';
		accessor: #limit;
		jsonName: #limit;
		beOptional;
		yourself
]

{ #category : #printing }
PJAccountBalance >> printOn: aStream [
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
