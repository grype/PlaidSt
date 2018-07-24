Class {
	#name : #PlaidIdentityEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidIdentityEndpoint class >> endpointPath [
	^ Path / 'identity'
]

{ #category : #api }
PlaidIdentityEndpoint >> list [
	<endpoint: 'get'>
	<post>
	^ PJIdentityResponse fromJson: self execute
]
