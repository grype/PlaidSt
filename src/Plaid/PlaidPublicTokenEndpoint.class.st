Class {
	#name : #PlaidPublicTokenEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #api }
PlaidPublicTokenEndpoint >> create [
	<endpoint: 'create'>
	<post>
	^ PJItemAccessResponse fromJson: self execute
]

{ #category : #accessing }
PlaidPublicTokenEndpoint >> endpointPath [
	^ Path / 'item' / 'public_token'
]

{ #category : #api }
PlaidPublicTokenEndpoint >> exhange: aPublicToken [
	<endpoint: 'exchange'>
	<post>
	self dataAt: 'public_token' put: aPublicToken.
	^ PJItemAccessResponse fromJson: self execute
]
