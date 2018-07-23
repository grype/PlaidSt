Class {
	#name : #PlaidItemWebhookEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidItemWebhookEndpoint class >> endpointPath [
	^ Path / 'item' / 'webhook'
]

{ #category : #api }
PlaidItemWebhookEndpoint >> update: anUrl [
	<endpoint: 'update'>
	<post>
	self dataAt: 'webhook' put: anUrl greaseString.
	^ PJItemResponse fromJson: self execute
]
