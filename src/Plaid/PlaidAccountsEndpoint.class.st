Class {
	#name : #PlaidAccountsEndpoint,
	#superclass : #PlaidEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidAccountsEndpoint class >> urlOn: aClient [
	^ (super urlOn: aClient) / 'accounts'
]

{ #category : #endpoints }
PlaidAccountsEndpoint >> balances [
	^ self > PlaidBalancesEndpoint
]

{ #category : #api }
PlaidAccountsEndpoint >> list [
	^ PJAccountsResponse fromJson: (self / 'get') authenticated post
]
