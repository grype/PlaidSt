Class {
	#name : #PlaidTransactionsEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#category : #'Plaid-Endpoints'
}

{ #category : #api }
PlaidTransactionsEndpoint >> get: aBlock [
	^ self > PlaidGetTransactionsEndpoint
		in: [ :endpoint | 
			aBlock cull: endpoint.
			endpoint execute ]
]
