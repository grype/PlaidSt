Class {
	#name : #PlaidPublicTokenEndpoint,
	#superclass : #PlaidItemEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #'instance creation' }
PlaidPublicTokenEndpoint class >> urlOn: aClient [
	^ aClient baseUrl / 'public_token'
]

{ #category : #api }
PlaidPublicTokenEndpoint >> create [
	^ PJItemAccessResponse fromJson: (self / 'create') authenticated post
]

{ #category : #api }
PlaidPublicTokenEndpoint >> exhange: aPublicToken [
	^ PJItemAccessResponse
		fromJson:
			((self / 'exchange')
				withClientId;
				withSecret;
				at: 'public_token' put: aPublicToken;
				post)
]
