Class {
	#name : #PlaidPublicTokenEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#category : #'Plaid-Endpoints'
}

{ #category : #accessing }
PlaidPublicTokenEndpoint class >> endpointPath [
	^ Path / 'item' / 'public_token'
]

{ #category : #api }
PlaidPublicTokenEndpoint >> create [
	<endpoint: 'create'>
	<post>
	^ PlaidItemAccessResponse fromJson: self execute
]

{ #category : #api }
PlaidPublicTokenEndpoint >> exchange: aPublicToken [
	<endpoint: 'exchange'>
	<post>
	self
		withoutAccessToken;
		dataAt: 'public_token' put: aPublicToken.
	^ PlaidItemAccessResponse fromJson: self execute
]
