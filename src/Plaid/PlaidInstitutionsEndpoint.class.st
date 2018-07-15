Class {
	#name : #PlaidInstitutionsEndpoint,
	#superclass : #PlaidEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidInstitutionsEndpoint class >> urlOn: aClient [
	^ (super urlOn: aClient) / 'institutions'
]

{ #category : #endpoints }
PlaidInstitutionsEndpoint >> list [
	^ self > PlaidInstitutionsListEndpoint
]

{ #category : #api }
PlaidInstitutionsEndpoint >> list: aBlock [
	^ (aBlock cull: self list) list
]

{ #category : #endpoints }
PlaidInstitutionsEndpoint >> search [
	^ self > PlaidInstitutionsSearchEndpoint
]

{ #category : #endpoints }
PlaidInstitutionsEndpoint >> search: aBlock [
	^ aBlock cull: self search
]
