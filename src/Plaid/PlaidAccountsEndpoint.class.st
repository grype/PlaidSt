Class {
	#name : #PlaidAccountsEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#category : #'Plaid-Endpoints'
}

{ #category : #accessing }
PlaidAccountsEndpoint class >> endpointPath [
	^ Path / 'accounts'
]

{ #category : #endpoints }
PlaidAccountsEndpoint >> balance [
	^ self / PlaidBalancesEndpoint
]

{ #category : #api }
PlaidAccountsEndpoint >> get [
	<path: 'get'>
	<post>
	^ PlaidAccountsResponse fromJson: self execute
]
