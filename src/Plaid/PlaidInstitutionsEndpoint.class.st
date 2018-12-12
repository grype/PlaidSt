Class {
	#name : #PlaidInstitutionsEndpoint,
	#superclass : #PlaidEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidInstitutionsEndpoint class >> endpointPath [
	^ Path / 'institutions'
]

{ #category : #api }
PlaidInstitutionsEndpoint >> getById: anInstitutionId [
	<endpoint: 'get_by_id'>
	<post>
	self
		withPublicKey;
		dataAt: #institution_id put: anInstitutionId.
	^ PlaidInstitutionResponse fromJson: self execute
]

{ #category : #api }
PlaidInstitutionsEndpoint >> getFrom: anOffset count: aCount [
	<endpoint: 'get'>
	<post>
	self
		withClientId;
		withSecret.
	self
		dataAt: #offset put: anOffset;
		dataAt: #count put: aCount.
	^ PlaidInstitutionsResponse fromJson: self execute
]

{ #category : #api }
PlaidInstitutionsEndpoint >> list [
	^ self getFrom: 0 count: 100
]

{ #category : #api }
PlaidInstitutionsEndpoint >> search: aQueryString products: aProductCollection [
	<endpoint: 'search'>
	<post>
	self withPublicKey.
	self
		dataAt: #query put: aQueryString;
		dataAt: #products put: aProductCollection.
	^ PlaidInstitutionsResponse fromJson: self execute
]
