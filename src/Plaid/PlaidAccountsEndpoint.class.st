Class {
	#name : #PlaidAccountsEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidAccountsEndpoint class >> endpointPath [
	^ Path / 'accounts'
]

{ #category : #endpoints }
PlaidAccountsEndpoint >> balance [
	^ self > PlaidBalancesEndpoint
]

{ #category : #api }
PlaidAccountsEndpoint >> list [
	<endpoint: 'get'>
	<post>
	^ PlaidAccountsResponse fromJson: self execute
]
