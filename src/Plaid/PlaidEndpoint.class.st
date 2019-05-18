"
I am an abstract endpoint. My subclasses implement concrete endpoints.

I provide basic storage of data via data ivar. My subclasses either override #data accessor, or set its contents directly. Look at #configureOn: to see what this data is used for...
 
Internal Representation and Key Implementation Points.

    Instance Variables
	data:		<Dictionary>

"
Class {
	#name : #PlaidEndpoint,
	#superclass : #Object,
	#traits : 'TWSEndpoint',
	#classTraits : 'TWSEndpoint classTrait',
	#instVars : [
		'data'
	],
	#category : #'Plaid-Endpoints'
}

{ #category : #data }
PlaidEndpoint >> authenticated [
	self
		withClientId;
		withSecret;
		withAccessToken
]

{ #category : #configuring }
PlaidEndpoint >> configureOn: http [
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
	self wsClient credentials accessToken ifNotNil: [ :value | self dataAt: 'access_token' put: value ]
]

{ #category : #data }
PlaidEndpoint >> withClientId [ 
	self wsClient credentials clientId ifNotNil: [ :value | self dataAt: 'client_id' put: value ]
]

{ #category : #data }
PlaidEndpoint >> withPublicKey [
	self wsClient credentials publicKey ifNotNil: [ :value | self dataAt: 'public_key' put: value ]
]

{ #category : #data }
PlaidEndpoint >> withSecret [
	self wsClient credentials secret ifNotNil: [ :value | self dataAt: 'secret' put: value ]
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
