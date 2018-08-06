Class {
	#name : #PlaidItemResponse,
	#superclass : #PlaidResponse,
	#instVars : [
		'item'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidItemResponse >> item [
	^ item
]

{ #category : #accessing }
PlaidItemResponse >> item: anObject [
	item := anObject
]

{ #category : #description }
PlaidItemResponse >> itemDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Item';
		accessor: #item;
		jsonName: #item;
		classes: {PlaidItem};
		yourself
]
