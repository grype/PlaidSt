Class {
	#name : #PlaidItemWebhookEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#category : #'Plaid-Endpoints'
}

{ #category : #accessing }
PlaidItemWebhookEndpoint class >> endpointPath [
	^ Path / 'item' / 'webhook'
]

{ #category : #api }
PlaidItemWebhookEndpoint >> updateUrl: anUrl [
	<endpoint: 'update'>
	<post>
	self dataAt: 'webhook' put: anUrl greaseString.
	^ PlaidItemResponse fromJson: self execute
]
