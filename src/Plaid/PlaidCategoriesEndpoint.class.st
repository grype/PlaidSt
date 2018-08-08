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
PlaidCategoriesEndpoint >> get [
	<endpoint: 'get'>
	<post>
	^ PlaidCategoriesResponse fromJson: self execute
]
