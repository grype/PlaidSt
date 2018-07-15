Class {
	#name : #PlaidItemEndpoint,
	#superclass : #PlaidEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #'instance creation' }
PlaidItemEndpoint class >> urlOn: aClient [
	^ aClient baseUrl / 'item'
]

{ #category : #api }
PlaidItemEndpoint >> list [
	^ PJItemResponse fromJson: (self / 'get') authenticated post
]

{ #category : #endpoints }
PlaidItemEndpoint >> publicToken [
	^ self > PlaidPublicTokenEndpoint 
]

{ #category : #api }
PlaidItemEndpoint >> remove [
	^ PJItemRemovedResponse fromJson: (self / 'remove') authenticated post
]
