Class {
	#name : #PlaidItemWebhookEndpoint,
	#superclass : #PlaidItemEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #'instance creation' }
PlaidItemWebhookEndpoint class >> urlOn: aClient [
	^ (super urlOn: aClient) / 'webhook'
]

{ #category : #api }
PlaidItemWebhookEndpoint >> update: anUrl [
	^ PJItemResponse
		fromJson:
			((self / 'update')
				authenticated;
				at: #webhook put: anUrl greaseString;
				post)
]
