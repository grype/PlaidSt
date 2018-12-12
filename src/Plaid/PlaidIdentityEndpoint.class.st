Class {
	#name : #PlaidIdentityEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#category : #'Plaid-Endpoints'
}

{ #category : #accessing }
PlaidIdentityEndpoint class >> endpointPath [
	^ Path / 'identity'
]

{ #category : #api }
PlaidIdentityEndpoint >> get [
	<endpoint: 'get'>
	<post>
	^ PlaidIdentityResponse fromJson: self execute
]
