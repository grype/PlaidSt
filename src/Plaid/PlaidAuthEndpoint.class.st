Class {
	#name : #PlaidAuthEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#category : #'Plaid-Endpoints'
}

{ #category : #accessing }
PlaidAuthEndpoint class >> endpointPath [
	^ Path / 'auth'
]

{ #category : #api }
PlaidAuthEndpoint >> get [
	<path: 'get'>
	<post>
	^ PlaidAuthResponse fromJson: self execute 
]
