Class {
	#name : #PJNewAccessTokenResponse,
	#superclass : #PJResponse,
	#instVars : [
		'newAccessToken'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJNewAccessTokenResponse >> newAccessToken [
	^ newAccessToken
]

{ #category : #accessing }
PJNewAccessTokenResponse >> newAccessToken: anObject [
	newAccessToken := anObject
]

{ #category : #description }
PJNewAccessTokenResponse >> newAccessTokenDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'New Access Token';
		accessor: #newAccessToken;
		jsonName: #new_access_token;
		yourself
]
