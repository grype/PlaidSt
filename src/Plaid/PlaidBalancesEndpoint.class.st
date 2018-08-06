Class {
	#name : #PlaidBalancesEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidBalancesEndpoint class >> endpointPath [
	^ Path / 'accounts' / 'balance'
]

{ #category : #api }
PlaidBalancesEndpoint >> list [
	<endpoint: 'get'>
	<post>
	^ PlaidAccountsResponse fromJson: self execute
]
