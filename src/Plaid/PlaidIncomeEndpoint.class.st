Class {
	#name : #PlaidIncomeEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#category : #'Plaid-Endpoints'
}

{ #category : #accessing }
PlaidIncomeEndpoint class >> endpointPath [
	^ Path / 'income'
]

{ #category : #api }
PlaidIncomeEndpoint >> get [
	<paht: 'get'>
	<post>
	^ PlaidIncomeResponse fromJson: self execute
]
