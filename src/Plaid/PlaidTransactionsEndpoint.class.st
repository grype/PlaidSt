Class {
	#name : #PlaidTransactionsEndpoint,
	#superclass : #PlaidEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #'instance creation' }
PlaidTransactionsEndpoint class >> urlOn: aClient [
	^ aClient baseUrl / 'transactions'
]

{ #category : #initialization }
PlaidTransactionsEndpoint >> initializeData [
	super initializeData.
	self authenticated
]
