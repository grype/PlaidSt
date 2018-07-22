Class {
	#name : #PlaidAuthenticatedEndpoint,
	#superclass : #PlaidEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #initialization }
PlaidAuthenticatedEndpoint >> initializeOn: aClient [
	super initializeOn: aClient.
	self authenticated
]
