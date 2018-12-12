Class {
	#name : #PlaidInstitutionsEndpoint,
	#superclass : #PlaidEndpoint,
	#traits : 'TPlaidEnumeration',
	#classTraits : 'TPlaidEnumeration classTrait',
	#category : #'Plaid-Endpoints'
}

{ #category : #'as yet unclassified' }
PlaidInstitutionsEndpoint class >> defaultCount [
	^ 100
]

{ #category : #accessing }
PlaidInstitutionsEndpoint class >> endpointPath [
	^ Path / 'institutions'
]

{ #category : #enumerating }
PlaidInstitutionsEndpoint >> enumerate: aPager [
	| result institutions |

	result := self getFrom: aPager index count: aPager pageSize.
	institutions := result institutions.
	aPager atEnd: aPager index * aPager pageSize >= result totalInstitutions.
	^ institutions
]

{ #category : #enumerating }
PlaidInstitutionsEndpoint >> enumerationPageSize [
	^ PlaidPager maxPageSize 
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
		dataAt: #offset put: anOffset;
		dataAt: #count put: aCount.
	self
		withClientId;
		withSecret.
	^ PlaidInstitutionsResponse fromJson: self execute
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
