Class {
	#name : #PlaidBalancesEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#instVars : [
		'accountIds'
	],
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidBalancesEndpoint >> endpointPath [
	^ Path / 'accounts' / 'balance'
]

{ #category : #api }
PlaidBalancesEndpoint >> list [
	<endpoint: 'get'>
	<post>
	^ PJAccountsResponse fromJson: self execute
]
