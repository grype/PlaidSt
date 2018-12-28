Class {
	#name : #PlaidPublicTokenResponse,
	#superclass : #PlaidResponse,
	#instVars : [
		'publicToken'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidPublicTokenResponse >> publicToken [
	^ publicToken
]

{ #category : #accessing }
PlaidPublicTokenResponse >> publicToken: anObject [
	publicToken := anObject
]

{ #category : #description }
PlaidPublicTokenResponse >> publicTokenDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Public Token';
		accessor: #publicToken;
		jsonName: #public_token;
		yourself
]
