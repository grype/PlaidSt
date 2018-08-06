Class {
	#name : #PlaidItemWebhook,
	#superclass : #PlaidWebhook,
	#instVars : [
		'itemId'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidItemWebhook >> itemId [
	^ itemId
]

{ #category : #accessing }
PlaidItemWebhook >> itemId: anObject [
	itemId := anObject
]

{ #category : #description }
PlaidItemWebhook >> itemIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Item ID';
		accessor: #itemId;
		jsonName: #item_id;
		yourself
]
