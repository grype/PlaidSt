Class {
	#name : #PlaidItem,
	#superclass : #PlaidModel,
	#instVars : [
		'availableProducts',
		'billedProducts',
		'itemError',
		'institutionId',
		'itemId',
		'webhook'
	],
	#category : #'Plaid-Models'
}

{ #category : #comparing }
PlaidItem >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ itemId = anObject itemId
]

{ #category : #accessing }
PlaidItem >> availableProducts [
	^ availableProducts
]

{ #category : #accessing }
PlaidItem >> availableProducts: anObject [
	availableProducts := anObject
]

{ #category : #description }
PlaidItem >> availableProductsDescription [
	<magritteDescription>
	^ MAElementDescription new
		label: 'Available Products';
		accessor: #availableProducts;
		jsonName: #available_products;
		yourself
]

{ #category : #accessing }
PlaidItem >> billedProducts [
	^ billedProducts
]

{ #category : #accessing }
PlaidItem >> billedProducts: anObject [
	billedProducts := anObject
]

{ #category : #description }
PlaidItem >> billedProductsDescription [
	<magritteDescription>
	^ MAElementDescription new
		label: 'Billed Products';
		accessor: #billedProducts;
		jsonName: #billed_products;
		yourself
]

{ #category : #description }
PlaidItem >> errorDescription [
	<magritteDescription>
	^ MAElementDescription new
		label: 'Error';
		accessor:
			(MAPluggableAccessor
				read: [ :obj | obj itemError ]
				write: [ :obj :val | val ifNotNil: [ obj itemError: val ] ]);
		jsonName: #error;
		beOptional;
		yourself
]

{ #category : #comparing }
PlaidItem >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ itemId hash
]

{ #category : #accessing }
PlaidItem >> institutionId [
	^ institutionId
]

{ #category : #accessing }
PlaidItem >> institutionId: anObject [
	institutionId := anObject
]

{ #category : #description }
PlaidItem >> institutionIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Institution ID';
		accessor: #institutionId;
		jsonName: #institution_id;
		yourself
]

{ #category : #accessing }
PlaidItem >> itemError [
	^ itemError
]

{ #category : #accessing }
PlaidItem >> itemError: anObject [
	itemError := anObject
]

{ #category : #accessing }
PlaidItem >> itemId [
	^ itemId
]

{ #category : #accessing }
PlaidItem >> itemId: anObject [
	itemId := anObject
]

{ #category : #description }
PlaidItem >> itemIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Item ID';
		accessor: #itemId;
		jsonName: #item_id;
		yourself
]

{ #category : #printing }
PlaidItem >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPutAll: ' <';
		nextPutAll: itemId;
		nextPut: $>
]

{ #category : #accessing }
PlaidItem >> webhook [
	^ webhook
]

{ #category : #accessing }
PlaidItem >> webhook: anObject [
	webhook := anObject
]

{ #category : #description }
PlaidItem >> webhookDescription [
	<magritteDescription>
	^ MAUrlDescription new
		label: 'Webhook';
		accessor: #webhook;
		jsonName: #webhook;
		beOptional;
		yourself
]
