Class {
	#name : #PlaidItemEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidItemEndpoint class >> endpointPath [
	^ Path / 'item'
]

{ #category : #api }
PlaidItemEndpoint >> invalidate [
	<endpoint: 'access_token/invalidate'>
	<post>
	^ PlaidNewAccessTokenResponse fromJson: self execute
]

{ #category : #api }
PlaidItemEndpoint >> list [
	<endpoint: 'get'>
	<post>
	^ PlaidItemResponse fromJson: self execute
]

{ #category : #endpoints }
PlaidItemEndpoint >> publicToken [
	^ self > PlaidPublicTokenEndpoint 
]

{ #category : #api }
PlaidItemEndpoint >> remove [
	<endpoint: 'remove'>
	<post>
	^ PlaidRemovedResponse fromJson: self execute
]

{ #category : #api }
PlaidItemEndpoint >> updateAccessTokenVersion [
	<endpoint: 'access_token/update_version'>
	<post>
	self
		withoutAccessToken.
	self client credentials accessToken ifNotNil: [ :value | self dataAt: 'access_token_v1' put: value ].
	^ PlaidItemAccessResponse fromJson: self execute
]

{ #category : #endpoints }
PlaidItemEndpoint >> webhook [
	^ self > PlaidItemWebhookEndpoint 
]
