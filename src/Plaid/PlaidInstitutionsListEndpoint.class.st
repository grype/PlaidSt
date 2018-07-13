Class {
	#name : #PlaidInstitutionsListEndpoint,
	#superclass : #PlaidInstitutionsEndpoint,
	#instVars : [
		'count',
		'offset'
	],
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidInstitutionsListEndpoint class >> urlOn: aClient [
	^ (super urlOn: aClient) / 'get'
]

{ #category : #accessing }
PlaidInstitutionsListEndpoint >> count [
	^ count
]

{ #category : #accessing }
PlaidInstitutionsListEndpoint >> count: anObject [
	count := anObject
]

{ #category : #accessing }
PlaidInstitutionsListEndpoint >> data [
	^ super data
		at: 'count' put: (count ifNil: [ 10 ]);
		at: 'offset' put: (offset ifNil: [ 0 ]);
		yourself
]

{ #category : #initialization }
PlaidInstitutionsListEndpoint >> initializeWithClient: aClient url: aUrl [
	super initializeWithClient: aClient url: aUrl.
	self
		withClientId;
		withSecret
]

{ #category : #accessing }
PlaidInstitutionsListEndpoint >> offset [
	^ offset
]

{ #category : #accessing }
PlaidInstitutionsListEndpoint >> offset: anObject [
	offset := anObject
]
