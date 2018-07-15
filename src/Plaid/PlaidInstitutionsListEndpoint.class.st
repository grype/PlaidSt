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
	^ data at: #count
]

{ #category : #accessing }
PlaidInstitutionsListEndpoint >> count: anObject [
	data at: #count put: anObject 
]

{ #category : #initialization }
PlaidInstitutionsListEndpoint >> initializeData [
	super initializeData.
	self
		withClientId;
		withSecret
]

{ #category : #api }
PlaidInstitutionsListEndpoint >> list [
	^ PJInstitutionsResponse fromJson: self post
]

{ #category : #accessing }
PlaidInstitutionsListEndpoint >> offset [
	^ data at: #offset
]

{ #category : #accessing }
PlaidInstitutionsListEndpoint >> offset: anObject [
	data at: #offset put: anObject 
]
