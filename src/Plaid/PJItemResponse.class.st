Class {
	#name : #PJItemResponse,
	#superclass : #PJResponse,
	#instVars : [
		'item'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJItemResponse >> item [
	^ item
]

{ #category : #accessing }
PJItemResponse >> item: anObject [
	item := anObject
]

{ #category : #description }
PJItemResponse >> itemDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Item';
		accessor: #item;
		jsonName: #item;
		classes: {PJItem};
		yourself
]
