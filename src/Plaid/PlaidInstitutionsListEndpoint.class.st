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
	^ super data copy
		at: #count put: self count;
		at: #offset put: self offset;
		yourself
]

{ #category : #initialization }
PlaidInstitutionsListEndpoint >> initializeData [
	super initializeData.
	self
		withClientId;
		withSecret
]

{ #category : #endpoints }
PlaidInstitutionsListEndpoint >> list [
	^ PJInstitutionsResponse fromJson: self post
]

{ #category : #accessing }
PlaidInstitutionsListEndpoint >> offset [
	^ offset
]

{ #category : #accessing }
PlaidInstitutionsListEndpoint >> offset: anObject [
	offset := anObject
]
