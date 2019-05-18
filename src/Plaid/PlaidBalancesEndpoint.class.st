Class {
	#name : #PlaidBalancesEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#category : #'Plaid-Endpoints'
}

{ #category : #accessing }
PlaidBalancesEndpoint class >> endpointPath [
	^ Path / 'accounts' / 'balance'
]

{ #category : #api }
PlaidBalancesEndpoint >> get [
	<path: 'get'>
	<post>
	^ PlaidAccountsResponse fromJson: self execute
]
