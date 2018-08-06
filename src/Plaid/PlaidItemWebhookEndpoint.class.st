Class {
	#name : #PlaidItemWebhookEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#instVars : [
		'url'
	],
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidItemWebhookEndpoint class >> endpointPath [
	^ Path / 'item' / 'webhook'
]

{ #category : #api }
PlaidItemWebhookEndpoint >> update [
	<endpoint: 'update'>
	<post>
	self dataAt: 'webhook' put: self url greaseString.
	^ PJItemResponse fromJson: self execute
]

{ #category : #accessing }
PlaidItemWebhookEndpoint >> url [
	^ url
]

{ #category : #accessing }
PlaidItemWebhookEndpoint >> url: anObject [
	url := anObject
]
