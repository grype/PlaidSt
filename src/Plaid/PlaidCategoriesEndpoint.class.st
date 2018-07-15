Class {
	#name : #PlaidCategoriesEndpoint,
	#superclass : #PlaidEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #'instance creation' }
PlaidCategoriesEndpoint class >> urlOn: aClient [
	^ aClient baseUrl / 'categories'
]

{ #category : #api }
PlaidCategoriesEndpoint >> list [
	^ PJCategoriesResponse fromJson: (self / 'get') post
]
