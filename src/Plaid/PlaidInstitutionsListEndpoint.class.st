Class {
	#name : #PlaidInstitutionsListEndpoint,
	#superclass : #PlaidInstitutionsEndpoint,
	#instVars : [
		'count',
		'offset'
	],
	#category : #'Plaid-Client'
}

{ #category : #'instance creation' }
PlaidInstitutionsListEndpoint class >> withClient: aClient [
	^ (self basicNew initializeWithClient: aClient url: aClient baseUrl / 'institutions' / 'get')
		withClientId;
		withSecret;
		yourself
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

{ #category : #accessing }
PlaidInstitutionsListEndpoint >> offset [
	^ offset
]

{ #category : #accessing }
PlaidInstitutionsListEndpoint >> offset: anObject [
	offset := anObject
]
