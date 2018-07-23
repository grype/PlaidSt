Class {
	#name : #PlaidBalancesEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#instVars : [
		'accountIds'
	],
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
	^ PJAccountsResponse fromJson: self execute
]
