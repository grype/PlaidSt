Class {
	#name : #PlaidTransactionsEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #api }
PlaidTransactionsEndpoint >> get: aBlock [
	^ self > PlaidGetTransactionsEndpoint
		in: [ :endpoint | 
			aBlock cull: endpoint.
			endpoint execute ]
]
