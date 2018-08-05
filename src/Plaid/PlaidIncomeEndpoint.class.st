Class {
	#name : #PlaidIncomeEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidIncomeEndpoint class >> endpointPath [
	^ Path / 'income'
]

{ #category : #api }
PlaidIncomeEndpoint >> list [
	<endpoint: 'get'>
	<post>
	^ PJIncomeResponse fromJson: self execute
]