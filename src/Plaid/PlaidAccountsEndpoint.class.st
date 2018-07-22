Class {
	#name : #PlaidAccountsEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #endpoints }
PlaidAccountsEndpoint >> balance [
	^ self > PlaidBalancesEndpoint
]

{ #category : #accessing }
PlaidAccountsEndpoint >> endpointPath [
	^ '/accounts'
]

{ #category : #api }
PlaidAccountsEndpoint >> list [
	<endpoint: '/accounts/get'>
	<post>
	^ PJAccountsResponse fromJson: self execute
]
