Class {
	#name : #PlaidNewAccessTokenResponse,
	#superclass : #PlaidResponse,
	#instVars : [
		'newAccessToken'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidNewAccessTokenResponse >> newAccessToken [
	^ newAccessToken
]

{ #category : #accessing }
PlaidNewAccessTokenResponse >> newAccessToken: anObject [
	newAccessToken := anObject
]

{ #category : #description }
PlaidNewAccessTokenResponse >> newAccessTokenDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'New Access Token';
		accessor: #newAccessToken;
		jsonName: #new_access_token;
		yourself
]
