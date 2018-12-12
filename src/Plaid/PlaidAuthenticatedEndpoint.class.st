Class {
	#name : #PlaidAuthenticatedEndpoint,
	#superclass : #PlaidEndpoint,
	#category : #'Plaid-Endpoints'
}

{ #category : #initialization }
PlaidAuthenticatedEndpoint >> initializeOn: aClient [
	super initializeOn: aClient.
	self authenticated
]
