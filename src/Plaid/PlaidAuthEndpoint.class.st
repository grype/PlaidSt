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
	<endpoint: 'get'>
	<post>
	^ PlaidAuthResponse fromJson: self execute 
]
