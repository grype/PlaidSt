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

{ #category : #accessing }
PJAccountBalances >> current [
	^ current
]

{ #category : #accessing }
PJAccountBalances >> current: anObject [
	current := anObject
]

{ #category : #accessing }
PJAccountBalances >> limit [
	^ limit
]

{ #category : #accessing }
PJAccountBalances >> limit: anObject [
	limit := anObject
]
