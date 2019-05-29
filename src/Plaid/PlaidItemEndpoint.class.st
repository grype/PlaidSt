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
	<path: 'get'>
	<post>
	^ PlaidItemResponse fromJson: self execute
]

{ #category : #endpoints }
PlaidItemEndpoint >> publicToken [
	^ self / PlaidPublicTokenEndpoint 
]

{ #category : #api }
PlaidItemEndpoint >> remove [
	<path: 'remove'>
	<post>
	^ PlaidRemovedResponse fromJson: self execute
]

{ #category : #endpoints }
PlaidItemEndpoint >> webhook [
	^ self / PlaidItemWebhookEndpoint 
]
