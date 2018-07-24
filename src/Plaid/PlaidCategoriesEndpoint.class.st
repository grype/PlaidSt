Class {
	#name : #PlaidCategoriesEndpoint,
	#superclass : #PlaidEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidCategoriesEndpoint class >> endpointPath [
	^ Path / 'categories'
]

{ #category : #api }
PlaidCategoriesEndpoint >> list [
	<endpoint: 'get'>
	<post>
	^ PJCategoriesResponse fromJson: self execute
]
