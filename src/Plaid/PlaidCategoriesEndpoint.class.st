Class {
	#name : #PlaidCategoriesEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidCategoriesEndpoint >> endpointPath [
	^ Path / 'categories'
]

{ #category : #api }
PlaidCategoriesEndpoint >> list [
	<endpoint: 'get'>
	<post>
	^ PJCategoriesResponse fromJson: self execute
]
