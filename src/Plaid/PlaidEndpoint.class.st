Class {
	#name : #PlaidEndpoint,
	#superclass : #Object,
	#instVars : [
		'client',
		'url',
		'httpClient',
		'data'
	],
	#category : #'Plaid-Client'
}

{ #category : #'instance creation' }
PlaidEndpoint class >> withClient: aClient url: aUrl [
	^ self basicNew initializeWithClient: aClient url: aUrl
]

{ #category : #endpoints }
PlaidEndpoint >> / aPath [
	^ PlaidEndpoint withClient: client url: self url / aPath
]

{ #category : #configuring }
PlaidEndpoint >> at: aPropertyName put: aValue [
	data at: aPropertyName put: aValue
]

{ #category : #accessing }
PlaidEndpoint >> client [
	^ client
]

{ #category : #operations }
PlaidEndpoint >> configure [
	self httpClient url: url
]

{ #category : #operations }
PlaidEndpoint >> data [
	^ data
]

{ #category : #accessing }
PlaidEndpoint >> data: anObject [
	data := anObject
]

{ #category : #operations }
PlaidEndpoint >> delete [
	self configure.
	self data ifNotNil: [ :d | self httpClient in: [ :http | http queryAddAll: d ] ].
	^ self httpClient delete
]

{ #category : #operations }
PlaidEndpoint >> get [
	| result http |
	self configure.
	http := self httpClient.
	self data ifNotNil: [ :d | http queryAddAll: d ].
	result := http get.
	^ http
	
]

{ #category : #operations }
PlaidEndpoint >> handleHttpError [
	| http response |
	http := self httpClient.
	http isSuccess
		ifTrue: [ ^ self ].
	response := PlaidErrorResponse fromJson: http response contents.
	(PlaidClientError withResponse: response) signal
]

{ #category : #accessing }
PlaidEndpoint >> httpClient [
	^ httpClient ifNil: [ httpClient := client createHttpClient ]
]

{ #category : #initialization }
PlaidEndpoint >> initializeWithClient: aClient url: aUrl [
	self initialize.
	client := aClient.
	url := aUrl.
	data := Dictionary new
]

{ #category : #operations }
PlaidEndpoint >> patch [
	self configure.
	self data ifNotNil: [ :d | self httpClient in: [ :http | http contents: d ] ].
	^ self httpClient patch
]

{ #category : #operations }
PlaidEndpoint >> post [
	| http result |
	self configure.
	http := self httpClient.
	self data ifNotNil: [ :d | http contents: d ].
	result := http post.
	self handleHttpError.
	^ result
]

{ #category : #operations }
PlaidEndpoint >> put [
	self configure.
	self data ifNotNil: [ :d | self httpClient in: [ :http | http contents: d ] ].
	^ self httpClient put
]

{ #category : #configuring }
PlaidEndpoint >> remove: aPropertyName [
	data remove: aPropertyName ifAbsent: [  ]
]

{ #category : #accessing }
PlaidEndpoint >> url [
	^ url
]

{ #category : #configuring }
PlaidEndpoint >> withAccessToken [
	self client credentials accessToken ifNotNil: [ :value | self at: 'access_token' put: value ]
]

{ #category : #configuring }
PlaidEndpoint >> withClientId [ 
	self client credentials clientId ifNotNil: [ :value | self at: 'client_id' put: value ]
]

{ #category : #configuring }
PlaidEndpoint >> withPublicKey [
	self client credentials publicKey ifNotNil: [ :value | self at: 'public_key' put: value ]
]

{ #category : #configuring }
PlaidEndpoint >> withSecret [
	self client credentials secret ifNotNil: [ :value | self at: 'secret' put: value ]
]
