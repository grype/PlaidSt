Class {
	#name : #PlaidEndpoint,
	#superclass : #UnrestEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #'response handling' }
PlaidEndpoint >> validateHttpResponse: aResponse [
	| errorResponse |
	(super validateHttpResponse: aResponse) ifTrue: [ ^ self ].
	errorResponse := PJError fromJson: aResponse contents.
	(PlaidResponseError withResponse: errorResponse) signal
]

{ #category : #data }
PlaidEndpoint >> withAccessToken [
	self client credentials accessToken ifNotNil: [ :value | self at: 'access_token' put: value ]
]

{ #category : #data }
PlaidEndpoint >> withClientId [ 
	self client credentials clientId ifNotNil: [ :value | self at: 'client_id' put: value ]
]

{ #category : #data }
PlaidEndpoint >> withPublicKey [
	self client credentials publicKey ifNotNil: [ :value | self at: 'public_key' put: value ]
]

{ #category : #data }
PlaidEndpoint >> withSecret [
	self client credentials secret ifNotNil: [ :value | self at: 'secret' put: value ]
]
