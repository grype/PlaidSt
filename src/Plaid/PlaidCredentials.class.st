"
I am used to configure PlaidClient.

I store various bits of information that are essential to establishing communication with the web service, such as private and public keys.
 
Instance Variables
	clientID:		<String> 
	secret:		<String>
	publicKey:		<String>
	accessToken: 	<String>

#clientID and #secret are private identifiers that are required for accessing any financial data.
#publicKey is a non-sensitive, public identifier that is used to initialize Plaid Link.
#accesToken is normally set by the client, once it is exchanged for a public token retrieved via Link
"
Class {
	#name : #PlaidCredentials,
	#superclass : #Object,
	#instVars : [
		'publicKey',
		'secret',
		'accessToken',
		'clientId'
	],
	#classVars : [
		'DefaultClientId',
		'DefaultPublicKey',
		'DefaultSecret'
	],
	#category : #'Plaid-Core'
}

{ #category : #accessing }
PlaidCredentials class >> default [
	^ self new
		publicKey: DefaultPublicKey;
		secret: DefaultSecret;
		clientId: DefaultClientId;
		yourself
]

{ #category : #accessing }
PlaidCredentials class >> defaultClientId [
	^ DefaultClientId
]

{ #category : #accessing }
PlaidCredentials class >> defaultClientId: anObject [
	DefaultClientId := anObject
]

{ #category : #accessing }
PlaidCredentials class >> defaultPublicKey [
	^ DefaultPublicKey
]

{ #category : #accessing }
PlaidCredentials class >> defaultPublicKey: anObject [
	DefaultPublicKey := anObject
]

{ #category : #accessing }
PlaidCredentials class >> defaultSecret [
	^ DefaultSecret
]

{ #category : #defaults }
PlaidCredentials class >> defaultSecret: anObject [
	DefaultSecret := anObject
]

{ #category : #'class initialization' }
PlaidCredentials class >> initialize [
	DefaultPublicKey ifNil: [ DefaultPublicKey := '' ].
	DefaultSecret ifNil: [ DefaultSecret := '' ].
	DefaultClientId ifNil: [ DefaultClientId := '' ]
]

{ #category : #settings }
PlaidCredentials class >> plaidCredentialSettingsOn: aBuilder [
	<systemsettings>
	(aBuilder group: #PlaidCredentials)
		label: 'Credentials';
		description: 'Plaid API Credentials';
		parent: #Plaid;
		with: [ (aBuilder setting: #defaultClientId)
				target: self;
				order: 3;
				label: 'Client ID';
				description: 'Default Client ID'.
			(aBuilder setting: #defaultPublicKey)
				target: self;
				order: 1;
				label: 'Public Key';
				description: 'Default Public key'.
			(aBuilder setting: #defaultSecret)
				target: self;
				order: 2;
				label: 'Secret';
				description: 'Default Secret' ]
]

{ #category : #comparing }
PlaidCredentials >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ accessToken = anObject accessToken
		and: [ clientId = anObject clientId
				and: [ publicKey = anObject publicKey and: [ secret = anObject secret ] ] ]
]

{ #category : #accessing }
PlaidCredentials >> accessToken [
	^ accessToken
]

{ #category : #accessing }
PlaidCredentials >> accessToken: anObject [
	accessToken := anObject
]

{ #category : #accessing }
PlaidCredentials >> clientId [
	^ clientId
]

{ #category : #accessing }
PlaidCredentials >> clientId: anObject [
	clientId := anObject
]

{ #category : #comparing }
PlaidCredentials >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ accessToken hash
		bitXor: (clientId hash bitXor: (publicKey hash bitXor: secret hash))
]

{ #category : #accessing }
PlaidCredentials >> publicKey [
	^ publicKey
]

{ #category : #accessing }
PlaidCredentials >> publicKey: anObject [
	publicKey := anObject
]

{ #category : #accessing }
PlaidCredentials >> secret [
	^ secret
]

{ #category : #accessing }
PlaidCredentials >> secret: anObject [
	secret := anObject
]
