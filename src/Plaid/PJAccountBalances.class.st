Class {
	#name : #PJAccountBalances,
	#superclass : #PJObject,
	#instVars : [
		'available',
		'current',
		'limit'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJAccountBalances >> available [
	^ available
]

{ #category : #accessing }
PJAccountBalances >> available: anObject [
	available := anObject
]

{ #category : #description }
PJAccountBalances >> availableDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Available';
		accessor: #available;
		jsonName: #available;
		beOptional;
		yourself
]

{ #category : #accessing }
PJAccountBalances >> current [
	^ current
]

{ #category : #accessing }
PJAccountBalances >> current: anObject [
	current := anObject
]

{ #category : #description }
PJAccountBalances >> currentDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Current';
		accessor: #current;
		jsonName: #current;
		beOptional;
		yourself
]

{ #category : #accessing }
PJAccountBalances >> limit [
	^ limit
]

{ #category : #accessing }
PJAccountBalances >> limit: anObject [
	limit := anObject
]

{ #category : #description }
PJAccountBalances >> limitDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Limit';
		accessor: #limit;
		jsonName: #limit;
		beOptional;
		yourself
]
