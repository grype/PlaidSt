Class {
	#name : #PJItemWebhook,
	#superclass : #PJWebhook,
	#instVars : [
		'itemId'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJItemWebhook >> itemId [
	^ itemId
]

{ #category : #accessing }
PJItemWebhook >> itemId: anObject [
	itemId := anObject
]

{ #category : #description }
PJItemWebhook >> itemIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Item ID';
		accessor: #itemId;
		jsonName: #item_id;
		yourself
]
