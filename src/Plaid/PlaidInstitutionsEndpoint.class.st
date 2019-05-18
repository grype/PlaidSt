Class {
	#name : #PlaidInstitutionsEndpoint,
	#superclass : #PlaidEndpoint,
	#traits : 'TPlaidEnumeration',
	#classTraits : 'TPlaidEnumeration classTrait',
	#category : #'Plaid-Endpoints'
}

{ #category : #defaults }
PlaidInstitutionsEndpoint class >> defaultCount [
	^ 100
]

{ #category : #accessing }
PlaidInstitutionsEndpoint class >> endpointPath [
	^ Path / 'institutions'
]

{ #category : #accessing }
PlaidInstitutionsEndpoint class >> sandboxOnlyInstitutionIds [
	^ #(#ins_109508 #ins_109509 #ins_109510 #ins_109511 #ins_109512 #ins_43)
]

{ #category : #api }
PlaidInstitutionsEndpoint >> getAnyFromSandboxOnly [
	^ self getById: self class sandboxOnlyInstitutionIds anyOne
]

{ #category : #api }
PlaidInstitutionsEndpoint >> getById: anInstitutionId [
	<path: 'get_by_id'>
	<post>
	self
		withPublicKey;
		dataAt: #institution_id put: anInstitutionId.
	^ PlaidInstitutionResponse fromJson: self execute
]

{ #category : #api }
PlaidInstitutionsEndpoint >> getFrom: anOffset count: aCount [
	<path: 'get'>
	<post>
	self
		dataAt: #offset put: anOffset;
		dataAt: #count put: aCount.
	self
		withClientId;
		withSecret.
	^ PlaidInstitutionsResponse fromJson: self execute
]

{ #category : #enumerating }
PlaidInstitutionsEndpoint >> next: anInt with: aCursor [
	| result institutions batchSize |
	batchSize := anInt ifNil: [ self defaultEnumerationSize ].
	result := self getFrom: aCursor offset count: batchSize.
	institutions := result institutions.
	institutions
		ifNotNil: [ :val | aCursor offset: aCursor offset + institutions size ].
	aCursor hasMore: aCursor offset < result totalInstitutions.
	^ institutions
]

{ #category : #api }
PlaidInstitutionsEndpoint >> search: aQueryString products: aProductCollection [
	<path: 'search'>
	<post>
	self withPublicKey.
	self
		dataAt: #query put: aQueryString;
		dataAt: #products put: aProductCollection.
	^ PlaidInstitutionsResponse fromJson: self execute
]
