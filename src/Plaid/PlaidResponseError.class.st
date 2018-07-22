Class {
	#name : #PlaidResponseError,
	#superclass : #UnrestError,
	#instVars : [
		'response'
	],
	#category : #'Plaid-Client'
}

{ #category : #'instance creation' }
PlaidResponseError class >> withResponse: aResponse [
	^ self basicNew initializeWithResponse: aResponse
]

{ #category : #initialization }
PlaidResponseError >> initializeWithResponse: aResponse [
	self initialize.
	response := aResponse.
	messageText := response displayMessage ifNil: [ response message ]
]

{ #category : #accessing }
PlaidResponseError >> response [
	^ response
]
