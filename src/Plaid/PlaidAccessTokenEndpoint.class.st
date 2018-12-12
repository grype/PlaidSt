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
	<endpoint: 'invalidate'>
	<post>
	^ PlaidNewAccessTokenResponse fromJson: self execute
]

{ #category : #api }
PlaidAccessTokenEndpoint >> updateVersion [
	<endpoint: 'update_version'>
	<post>
	self
		withoutAccessToken.
	self client credentials accessToken ifNotNil: [ :value | self dataAt: 'access_token_v1' put: value ].
	^ PlaidItemAccessResponse fromJson: self execute
]
