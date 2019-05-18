Class {
	#name : #PlaidCategoriesEndpoint,
	#superclass : #PlaidEndpoint,
	#category : #'Plaid-Endpoints'
}

{ #category : #accessing }
PlaidCategoriesEndpoint class >> endpointPath [
	^ Path / 'categories'
]

{ #category : #api }
PlaidCategoriesEndpoint >> get [
	<path: 'get'>
	<post>
	^ PlaidCategoriesResponse fromJson: self execute
]
