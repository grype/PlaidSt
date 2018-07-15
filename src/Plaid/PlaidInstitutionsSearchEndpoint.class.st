Class {
	#name : #PlaidInstitutionsSearchEndpoint,
	#superclass : #PlaidInstitutionsEndpoint,
	#instVars : [
		'query',
		'products'
	],
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidInstitutionsSearchEndpoint class >> urlOn: aClient [
	^ (super urlOn: aClient) / 'search'
]

{ #category : #initialization }
PlaidInstitutionsSearchEndpoint >> initializeData [
	super initializeData.
	self withPublicKey
]

{ #category : #accessing }
PlaidInstitutionsSearchEndpoint >> products [
	^ data at: #products
]

{ #category : #accessing }
PlaidInstitutionsSearchEndpoint >> products: anObject [
	data at: #products put: anObject
]

{ #category : #accessing }
PlaidInstitutionsSearchEndpoint >> query [
	^ data at: #query
]

{ #category : #accessing }
PlaidInstitutionsSearchEndpoint >> query: anObject [
	data at: #query put: anObject
]

{ #category : #api }
PlaidInstitutionsSearchEndpoint >> query: aQuery products: aListOfProducts [
	^ PJInstitutionsResponse
		fromJson:
			(self
				query: aQuery;
				products: aListOfProducts;
				post)
]

{ #category : #api }
PlaidInstitutionsSearchEndpoint >> search [
	^ PJInstitutionsResponse fromJson: self post
]
