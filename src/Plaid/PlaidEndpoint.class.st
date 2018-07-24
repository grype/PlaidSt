Class {
	#name : #PlaidEndpoint,
	#superclass : #UnrestEndpoint,
	#instVars : [
		'data'
	],
	#category : #'Plaid-Client'
}

{ #category : #data }
PlaidEndpoint >> authenticated [
	self
		withClientId;
		withSecret;
		withAccessToken
]

{ #category : #accessing }
PlaidEndpoint >> client [
	^ unrest
]

{ #category : #configuring }
PlaidEndpoint >> configureOn: http [
	super configureOn: http.
	http request method = #get
		ifTrue: [ http queryAddAll: self data ]
		ifFalse: [ http contents: self data ].
	http contentType: 'application/json'
]

{ #category : #accessing }
PlaidEndpoint >> data [
	^ data
]

{ #category : #data }
PlaidEndpoint >> dataAt: aKey put: aValue [
	data at: aKey put: aValue
]

{ #category : #data }
PlaidEndpoint >> dataRemoveAt: aKey [
	data removeKey: aKey ifAbsent: [  ]
]

{ #category : #initialization }
PlaidEndpoint >> initialize [
	super initialize.
	self initializeData
]

{ #category : #initialization }
PlaidEndpoint >> initializeData [
	data := Dictionary new
]

{ #category : #data }
PlaidEndpoint >> resetData [
	self initializeData.
]

{ #category : #data }
PlaidEndpoint >> withAccessToken [
	self client credentials accessToken ifNotNil: [ :value | self dataAt: 'access_token' put: value ]
]

{ #category : #data }
PlaidEndpoint >> withClientId [ 
	self client credentials clientId ifNotNil: [ :value | self dataAt: 'client_id' put: value ]
]

{ #category : #data }
PlaidEndpoint >> withPublicKey [
	self client credentials publicKey ifNotNil: [ :value | self dataAt: 'public_key' put: value ]
]

{ #category : #data }
PlaidEndpoint >> withSecret [
	self client credentials secret ifNotNil: [ :value | self dataAt: 'secret' put: value ]
]

{ #category : #data }
PlaidEndpoint >> withoutAccessToken [
	self dataRemoveAt: 'access_token'
]

{ #category : #data }
PlaidEndpoint >> withoutPublicKey [
	self dataRemoveAt: 'public_key'
]

{ #category : #data }
PlaidEndpoint >> withoutSecret [
	self dataRemoveAt: 'secret'
]
