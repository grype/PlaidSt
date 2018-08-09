"
I represent an error returned by Plaid API.

This error is encoded in the actual response from the server, which is captured in ==response==.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	response:		<Object>


"
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
