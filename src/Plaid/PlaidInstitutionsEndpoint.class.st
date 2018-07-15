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

{ #category : #endpoints }
PlaidInstitutionsEndpoint >> search [
	^ self > PlaidInstitutionsSearchEndpoint
]
