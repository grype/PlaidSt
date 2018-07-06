Class {
	#name : #PJItemAccessResponse,
	#superclass : #PJResponse,
	#instVars : [
		'itemId',
		'accessToken'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJItemAccessResponse >> accessToken [
	^ accessToken
]

{ #category : #accessing }
PJItemAccessResponse >> accessToken: anObject [
	accessToken := anObject
]

{ #category : #description }
PJItemAccessResponse >> accessTokenDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Access Token';
		accessor: #accessToken;
		jsonName: #access_token;
		yourself
]

{ #category : #accessing }
PJItemAccessResponse >> itemId [
	^ itemId
]

{ #category : #accessing }
PJItemAccessResponse >> itemId: anObject [
	itemId := anObject
]

{ #category : #description }
PJItemAccessResponse >> itemIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Item ID';
		accessor: #itemId;
		jsonName: #item_id;
		yourself
]
