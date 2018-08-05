Class {
	#name : #PJAccountHistoricalBalance,
	#superclass : #PJObject,
	#instVars : [
		'current',
		'limit',
		'date'
	],
	#category : #'Plaid-Models'
}

{ #category : #description }
PJAccountHistoricalBalance >> availableDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Available';
		accessor: #available;
		jsonName: #available;
		beOptional;
		yourself
]

{ #category : #accessing }
PJAccountHistoricalBalance >> current [
	^ current
]

{ #category : #accessing }
PJAccountHistoricalBalance >> current: anObject [
	current := anObject
]

{ #category : #description }
PJAccountHistoricalBalance >> currentDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Current';
		accessor: #current;
		jsonName: #current;
		beOptional;
		yourself
]

{ #category : #accessing }
PJAccountHistoricalBalance >> date [
	^ date
]

{ #category : #accessing }
PJAccountHistoricalBalance >> date: anObject [
	date := anObject
]

{ #category : #description }
PJAccountHistoricalBalance >> dateDescription [
	<magritteDescription>
	^ MADateDescription  new
		label: 'Date';
		accessor: #date;
		jsonName: #date;
		beOptional;
		yourself
]

{ #category : #accessing }
PJAccountHistoricalBalance >> limit [
	^ limit
]

{ #category : #accessing }
PJAccountHistoricalBalance >> limit: anObject [
	limit := anObject
]

{ #category : #description }
PJAccountHistoricalBalance >> limitDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Limit';
		accessor: #limit;
		jsonName: #limit;
		beOptional;
		yourself
]

{ #category : #printing }
PJAccountHistoricalBalance >> printOn: aStream [
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
