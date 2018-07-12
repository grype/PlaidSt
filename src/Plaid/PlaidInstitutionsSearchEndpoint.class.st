Class {
	#name : #PlaidInstitutionsSearchEndpoint,
	#superclass : #PlaidInstitutionsEndpoint,
	#instVars : [
		'query',
		'products'
	],
	#category : #'Plaid-Client'
}

{ #category : #'instance creation' }
PlaidInstitutionsSearchEndpoint class >> withClient: aClient [
	^ (self basicNew initializeWithClient: aClient url: aClient baseUrl / 'institutions' / 'search')
		withPublicKey;
		yourself
]

{ #category : #accessing }
PlaidInstitutionsSearchEndpoint >> data [
	^ super data
		at: 'query' put: (query ifNil: [ '' ]);
		at: 'products' put: (products ifNil: [ nil ] ifNotNil: [ :value | value ifEmpty: [ nil ] ifNotEmpty: [ value ] ]);
		yourself
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
