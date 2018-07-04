Class {
	#name : #PlaidClientError,
	#superclass : #Error,
	#instVars : [
		'response'
	],
	#category : #'Plaid-Client'
}

{ #category : #'instance creation' }
PlaidClientError class >> withResponse: aResponse [
	^ self basicNew initializeWithResponse: aResponse
]

{ #category : #initialization }
PlaidClientError >> initializeWithResponse: aResponse [
	self initialize.
	response := aResponse.
	messageText := response displayMessage ifNil: [ response errorMessage ]
]

{ #category : #private }
PlaidClientError >> isResumable [
	^ true
]

{ #category : #accessing }
PlaidClientError >> response [
	^ response
]
