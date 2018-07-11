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

{ #category : #operations }
PlaidEndpoint >> allowedHttpMethods [
	^ #(#head #get #post #put #patch #delete #trace)
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
	^ self perform: #delete dataInQuery: false
]

{ #category : #operations }
PlaidEndpoint >> get [
	^ self perform: #post dataInQuery: true
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
	^ self perform: #patch dataInQuery: false
]

{ #category : #operations }
PlaidEndpoint >> perform: anHttpMethod dataInQuery: useQuery [
	| http result method |

	method := self validateHttpMethod: anHttpMethod.

	method ifNil: [ Error signal: ('Tried to perform invalid HTTP Method "{1}"' format: {anHttpMethod}) ].

	self configure.
	http := self httpClient.
	self data
		ifNotNil: [ :d | 
			useQuery
				ifTrue: [ http queryAddAll: d ]
				ifFalse: [ http contents: d ] ].
	result := http perform: method.
	self handleHttpError.
	^ result
]

{ #category : #operations }
PlaidEndpoint >> post [
	^ self perform: #post dataInQuery: false
]

{ #category : #operations }
PlaidEndpoint >> put [
	^ self perform: #put dataInQuery: false
]

{ #category : #configuring }
PlaidEndpoint >> remove: aPropertyName [
	data remove: aPropertyName ifAbsent: [  ]
]

{ #category : #accessing }
PlaidEndpoint >> url [
	^ url
]

{ #category : #operations }
PlaidEndpoint >> validateHttpMethod: anHttpMethod [
	| method |
	method := anHttpMethod asLowercase.
	^ (self allowedHttpMethods includes: method) ifTrue: [ method asSymbol ] ifFalse: [ nil ]
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
