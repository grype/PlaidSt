Class {
	#name : #PlaidInstitutionsEndpoint,
	#superclass : #PlaidEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #'instance creation' }
PlaidInstitutionsEndpoint class >> withClient: aClient [
	^ (self basicNew initializeWithClient: aClient url: aClient baseUrl / 'institutions')
		withClientId;
		withSecret;
		yourself
]

{ #category : #api }
PlaidInstitutionsEndpoint >> listFrom: anOffset limit: aLimit [
	| endpoint |

	endpoint := (PlaidInstitutionsListEndpoint withClient: self client)
		count: aLimit;
		offset: anOffset;
		yourself.
	^ self processInstitutionsFromResponse: endpoint post
]

{ #category : #'response handling' }
PlaidInstitutionsEndpoint >> processInstitutionsFromResponse: aResponse [
	^ PJInstitutionsResponse fromJson: aResponse
]

{ #category : #api }
PlaidInstitutionsEndpoint >> query: aQuery products: aCollectionOfProducts [
	| endpoint |

	endpoint := (PlaidInstitutionsSearchEndpoint withClient: self client)
		query: aQuery;
		products: aCollectionOfProducts;
		yourself.
	^ self processInstitutionsFromResponse: endpoint post
]
