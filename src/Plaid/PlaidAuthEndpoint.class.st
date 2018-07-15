Class {
	#name : #PlaidAuthEndpoint,
	#superclass : #PlaidEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #'instance creation' }
PlaidAuthEndpoint class >> urlOn: aClient [
	^ aClient baseUrl / 'auth'
]

{ #category : #api }
PlaidAuthEndpoint >> list [
	^ PJAuthResponse fromJson: (self / 'get') authenticated post
]
