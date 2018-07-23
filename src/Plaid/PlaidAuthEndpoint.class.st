Class {
	#name : #PlaidAuthEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidAuthEndpoint class >> endpointPath [
	^ Path / 'auth'
]

{ #category : #api }
PlaidAuthEndpoint >> list [
	<endpoint: 'get'>
	<post>
	^ PJAuthResponse fromJson: self execute 
]
