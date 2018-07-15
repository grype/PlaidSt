Class {
	#name : #PlaidAuthEndpoint,
	#superclass : #PlaidEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #'instance creation' }
PlaidAuthEndpoint class >> urlOn: aClient [
	^ (super urlOn: aClient) / 'auth'
]

{ #category : #api }
PlaidAuthEndpoint >> list [
	^ PJAuthResponse fromJson: (self / 'get') authenticated post
]
