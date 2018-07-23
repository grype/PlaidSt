Class {
	#name : #PlaidInstitutionsEndpoint,
	#superclass : #PlaidEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidInstitutionsEndpoint class >> endpointPath [
	^ Path / 'institutions'
]

{ #category : #endpoints }
PlaidInstitutionsEndpoint >> listFrom: anOffset count: aCount [
	<endpoint: 'get'>
	<post>
	self withClientId ; withSecret .
	self dataAt: #offset put: anOffset; dataAt: #count put: aCount.
	^ PJInstitutionsResponse fromJson: self execute
]

{ #category : #api }
PlaidInstitutionsEndpoint >> search: aQueryString products: aProductCollection [
	<endpoint: 'search'>
	<post>
	self withPublicKey.
	self
		dataAt: #query put: aQueryString;
		dataAt: #products put: aProductCollection.
	^ PJInstitutionsResponse fromJson: self execute
]
