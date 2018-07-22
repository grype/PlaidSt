Class {
	#name : #PlaidAuthEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidAuthEndpoint >> endpointPath [
	^ Path / 'auth'
]

{ #category : #api }
PlaidAuthEndpoint >> list [
	<endpoint: 'get'>
	<post>
	^ PJAuthResponse fromJson: self execute 
]
