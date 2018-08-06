Class {
	#name : #PlaidItemAccessResponse,
	#superclass : #PlaidResponse,
	#instVars : [
		'itemId',
		'accessToken'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidItemAccessResponse >> accessToken [
	^ accessToken
]

{ #category : #accessing }
PlaidItemAccessResponse >> accessToken: anObject [
	accessToken := anObject
]

{ #category : #description }
PlaidItemAccessResponse >> accessTokenDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Access Token';
		accessor: #accessToken;
		jsonName: #access_token;
		yourself
]

{ #category : #accessing }
PlaidItemAccessResponse >> itemId [
	^ itemId
]

{ #category : #accessing }
PlaidItemAccessResponse >> itemId: anObject [
	itemId := anObject
]

{ #category : #description }
PlaidItemAccessResponse >> itemIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Item ID';
		accessor: #itemId;
		jsonName: #item_id;
		yourself
]
