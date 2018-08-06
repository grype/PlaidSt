Class {
	#name : #PlaidAccountHistoricalBalance,
	#superclass : #PlaidModel,
	#instVars : [
		'current',
		'limit',
		'date'
	],
	#category : #'Plaid-Models'
}

{ #category : #description }
PlaidAccountHistoricalBalance >> availableDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Available';
		accessor: #available;
		jsonName: #available;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidAccountHistoricalBalance >> current [
	^ current
]

{ #category : #accessing }
PlaidAccountHistoricalBalance >> current: anObject [
	current := anObject
]

{ #category : #description }
PlaidAccountHistoricalBalance >> currentDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Current';
		accessor: #current;
		jsonName: #current;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidAccountHistoricalBalance >> date [
	^ date
]

{ #category : #accessing }
PlaidAccountHistoricalBalance >> date: anObject [
	date := anObject
]

{ #category : #description }
PlaidAccountHistoricalBalance >> dateDescription [
	<magritteDescription>
	^ MADateDescription  new
		label: 'Date';
		accessor: #date;
		jsonName: #date;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidAccountHistoricalBalance >> limit [
	^ limit
]

{ #category : #accessing }
PlaidAccountHistoricalBalance >> limit: anObject [
	limit := anObject
]

{ #category : #description }
PlaidAccountHistoricalBalance >> limitDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Limit';
		accessor: #limit;
		jsonName: #limit;
		beOptional;
		yourself
]

{ #category : #printing }
PlaidAccountHistoricalBalance >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	super printOn: aStream.
	aStream
		nextPutAll: ' <';
		print: current;
		nextPut: $/;
		print: limit;
		nextPutAll: ' as of ';
		nextPutAll: date yyyymmdd;
		nextPut: $>
]
