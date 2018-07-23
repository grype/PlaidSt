Class {
	#name : #PlaidPublicTokenEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidPublicTokenEndpoint class >> endpointPath [
	^ Path / 'item' / 'public_token'
]

{ #category : #api }
PlaidPublicTokenEndpoint >> create [
	<endpoint: 'create'>
	<post>
	^ PJItemAccessResponse fromJson: self execute
]

{ #category : #api }
PlaidPublicTokenEndpoint >> exhange: aPublicToken [
	<endpoint: 'exchange'>
	<post>
	self dataAt: 'public_token' put: aPublicToken.
	^ PJItemAccessResponse fromJson: self execute
]
