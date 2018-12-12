Class {
	#name : #PlaidItemEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#category : #'Plaid-Endpoints'
}

{ #category : #accessing }
PlaidItemEndpoint class >> endpointPath [
	^ Path / 'item'
]

{ #category : #endpoints }
PlaidItemEndpoint >> accessToken [
	^ self > PlaidAccessTokenEndpoint  
]

{ #category : #api }
PlaidItemEndpoint >> get [
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

{ #category : #endpoints }
PlaidItemEndpoint >> webhook [
	^ self > PlaidItemWebhookEndpoint 
]
