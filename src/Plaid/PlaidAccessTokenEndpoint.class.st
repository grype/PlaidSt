Class {
	#name : #PlaidAccessTokenEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#category : #'Plaid-Endpoints'
}

{ #category : #accessing }
PlaidAccessTokenEndpoint class >> endpointPath [
	^ Path / 'item' / 'access_token'
]

{ #category : #api }
PlaidAccessTokenEndpoint >> invalidate [
	<path: 'invalidate'>
	<post>
	^ PlaidNewAccessTokenResponse fromJson: self execute
]

{ #category : #api }
PlaidAccessTokenEndpoint >> updateVersion [
	<path: 'update_version'>
	<post>
	self
		withoutAccessToken.
	self wsClient credentials accessToken ifNotNil: [ :value | self dataAt: 'access_token_v1' put: value ].
	^ PlaidItemAccessResponse fromJson: self execute
]
