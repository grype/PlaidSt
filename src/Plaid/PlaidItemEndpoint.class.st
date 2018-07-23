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
PlaidItemEndpoint >> list [
	<endpoint: 'get'>
	<post>
	^ PJItemResponse fromJson: self execute
]

{ #category : #endpoints }
PlaidItemEndpoint >> publicToken [
	^ self > PlaidPublicTokenEndpoint 
]

{ #category : #api }
PlaidItemEndpoint >> remove [
	<endpoint: 'remove'>
	<post>
	^ PJItemRemovedResponse fromJson: self execute
]

{ #category : #endpoints }
PlaidItemEndpoint >> webhook [
	^ self > PlaidItemWebhookEndpoint 
]
