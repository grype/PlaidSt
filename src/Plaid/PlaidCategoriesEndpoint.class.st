Class {
	#name : #PlaidCategoriesEndpoint,
	#superclass : #PlaidEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #'instance creation' }
PlaidCategoriesEndpoint class >> urlOn: aClient [
	^ (super urlOn: aClient) / 'categories'
]

{ #category : #api }
PlaidCategoriesEndpoint >> list [
	^ PJCategoriesResponse fromJson: (self / 'get') post
]
