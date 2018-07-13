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

{ #category : #accessing }
PlaidInstitutionsSearchEndpoint >> data [
	^ super data
		at: 'query' put: (query ifNil: [ '' ]);
		at: 'products' put: (products ifNil: [ nil ] ifNotNil: [ :value | value ifEmpty: [ nil ] ifNotEmpty: [ value ] ]);
		yourself
]

{ #category : #initialization }
PlaidInstitutionsSearchEndpoint >> initializeWithClient: aClient url: aUrl [
	super initializeWithClient: aClient url: aUrl.
	self withPublicKey
]

{ #category : #accessing }
PlaidInstitutionsSearchEndpoint >> products [
	^ products
]

{ #category : #accessing }
PlaidInstitutionsSearchEndpoint >> products: anObject [
	products := anObject
]

{ #category : #accessing }
PlaidInstitutionsSearchEndpoint >> query [
	^ query
]

{ #category : #accessing }
PlaidInstitutionsSearchEndpoint >> query: anObject [
	query := anObject
]
