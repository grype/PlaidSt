Class {
	#name : #PlaidTransactionsEndpoint,
	#superclass : #PlaidEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #'instance creation' }
PlaidTransactionsEndpoint class >> urlOn: aClient [
	^ (super urlOn: aClient) / 'transactions'
]

{ #category : #initialization }
PlaidTransactionsEndpoint >> initializeData [
	super initializeData.
	self authenticated
]

{ #category : #endpoints }
PlaidTransactionsEndpoint >> list [
	^ self > PlaidTransactionsListEndpoint 

]

{ #category : #endpoints }
PlaidTransactionsEndpoint >> list: aBlock [
	^ (aBlock cull: self list) list
]
